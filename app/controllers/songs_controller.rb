class SongsController < ApplicationController
  def index
    # @likes = Like.all
    # @top_songs = Song.where()
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

  ## don't get entire user object for current_user use only the id

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
end
