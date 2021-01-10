class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(whitelisted_user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def sign_in
    render :sign_in
  end

  def new_session
    @user = User.find_by username: params[:username]
    session[:current_user_id] = @user.id
    redirect_to @user
  end

  private

  def whitelisted_user_params
    params.require(:user).permit(:name, :username)
  end
end
