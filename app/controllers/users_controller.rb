class UsersController < ApplicationController
  def index
    @songs = Song.where(user_id: current_user.id)
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
    @user = User.find(params[:id])
    # @song = Song.find(song_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_params)
    if @user.save
      flash[:notice] = "Updated Profile"
      redirect_to "users/#{@user.id}/songs"
    else
      render 'show'
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
end
