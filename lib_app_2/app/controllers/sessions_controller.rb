class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    up = params.require(:user).permit(:email, :password)
    @user = User.create(up)
    if @user.save
      login(@user)
      flash[:notice] = "success log in"
      redirect_to @user
    else
      flash[:notice] = "retry"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "you've logged out"
    redirect_to root_path
  end

end
