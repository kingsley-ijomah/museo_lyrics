class SongsController < ApplicationController

  before_action :authorize, only: [:edit, :new, :create, :update, :destroy, :logout]
  before_action :correct_user, only: [:edit, :update, :destroy, :logout]
  before_action :check_if_song_belongs_to_current_user, only: [:edit, :update, :destroy]

  def index
    @current_month = Time.now.strftime("%B")
    most_liked = Song.joins(:likes).group(:song_id).order('count_song_id DESC').limit(4).count(:song_id).keys
    @top_songs = Song.find(most_liked)
    @songs = Song.all
    if params[:search]
      @songs = Song.search(params[:search]).order("created_at DESC")
    else
      @songs = Song.all
      flash[:notice] = "No results match search"
    end
  end


  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      current_user.songs << @song
      flash[:notice] = "Added Song"
      redirect_to song_path(@song.id)
    else
      render 'new'
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    if @song.save
      flash[:notice] = "Updated Song"
      redirect_to song_path
    else
      render 'show'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to user_path(current_user)
  end

  private
  def song_params
    params.require(:song).permit(:artist, :title, :lyric, :user_id)
  end

  def correct_user
    @User = current_user
    redirect_to(root_path) unless current_user?(@User)
  end

  def check_if_song_belongs_to_current_user
    @User = current_user
    @song = Song.find(params[:id])
    if @song[:user_id] == @User.id
      true
    else
      false
      redirect_to song_path(@song.id)
    end
  end
end
