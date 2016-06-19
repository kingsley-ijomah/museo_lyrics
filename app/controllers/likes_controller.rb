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
    @likes = Like.where(
      'user_id = :user_id AND song_id = :song_id',
      user_id: current_user.id,
      song_id: @song.id
    )
    @likes.destroy_all
    redirect_to song_path(@song)
  end
end
