class LikesController < ApplicationController

  def create
    @song = Song.find(params[:song_id])
    @user = current_user
    @like = Like.create(user_id: @user.id, song_id: @song.id)
    #current_user.likes << @song.song_id
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @user = current_user
    @likes = Like.all
    @like = @likes.where('user_id = ?', @user.id)
    @my_like = @like.where(song_id: @song.id)
    @my_like.destroy(params[:id])
  end

  #ask ezra to demonstrate how to create in the view
  # and then ask for search feature
  # also create an unlike feature and implement
  # throughout entire application for logged in users


end
