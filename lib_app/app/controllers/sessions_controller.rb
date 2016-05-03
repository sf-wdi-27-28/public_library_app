class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end
  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "Successfully logged in."
      redirect_to @user
    else
      flash[:error] = "Incorrect email or password."
      redirect_to login_path
    end
  end
  def destroy
    logout # this method lives in the SessionsHelper!
    flash[:notice] = "Successfully logged out."
    redirect_to root_path
  end
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
