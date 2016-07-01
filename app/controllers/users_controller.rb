class UsersController < ApplicationController

  before_action :authorize, only: [:show, :edit, :update, :destroy, :logout]
  before_action :correct_user, only: [:show, :edit, :update, :destroy, :logout]

  def index
    @songs = Song.where(user_id: current_user.id)
  end

  def likes
    @user = User.find(params[:id])
    @likes = @user.likes
    render 'show_likes'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up"
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @uploaded_songs = Song.where(user_id: current_user.id)
    @user = User.find(params[:id])
    @songs_array = @user.likes.pluck(:song_id)
    @songs = @songs_array.reverse
    @songs_list = Song.where(id: @songs).reverse
  end

  def liked_songs
    @user = current_user
    @songs_array = @user.likes.pluck(:song_id)
    @songs = @songs_array.reverse
    @songs_list = Song.where(id: @songs).select(['artist', 'title']).reverse
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      flash[:notice] = "Updated Profile"
      redirect_to user_path
    else
      redirect_to edit_user_path
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end

end




