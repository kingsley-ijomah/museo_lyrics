class SongsController < ApplicationController
  def index
    # @likes = Like.all
    # @top_songs = Song.where()
    @songs = Song.all
    if params[:search]
      @songs = Song.search(params[:search]).order("created_at DESC")
    else
      flash[:notice] = "No results match search"
    end
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      flash[:notice] = "Added Song"
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
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
end
