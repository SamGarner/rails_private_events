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

  private

  def whitelisted_user_params
    params.require(:user).permit(:name, :username)
  end
end
