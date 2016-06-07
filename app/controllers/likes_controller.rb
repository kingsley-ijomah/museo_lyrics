class LikesController < ApplicationController

  def create
    @song = Song.find(params[:song_id])
    current_user.likes << @song.song_id
    redirect_to 'songs/show'
  end

  def destroy

  end

end
