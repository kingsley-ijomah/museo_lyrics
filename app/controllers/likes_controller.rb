class LikesController < ApplicationController

  def create
    @song = Song.find(params[:song_id])
    current_user.likes << @song.song_id
    redirect_to 'songs/show'
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
  end

  #ask ezra to demonstrate how to create in the view
  # and then ask for search feature
  # also create an unlike feature and implement
  # throughout entire application for logged in users


end
