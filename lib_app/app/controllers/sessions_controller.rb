class SessionsController < ApplicationController
# skip_before_filter :require_login

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.confirm(user_params)
    if user
      login(user)
      flash[:notice] = "Success!"
      redirect_to user
    else
      flash[:error] = "There was an error logging in!"
      redirect_to login_path
    end
  end
  def destroy
    logout
    flash[:notice] = "Logged you out bra"
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
