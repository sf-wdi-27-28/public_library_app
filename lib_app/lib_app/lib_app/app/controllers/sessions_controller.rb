class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      redirect_to @user
    else
      redirect_to login_path
    end
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "Successfully logged in."  # notifies user of Successfull login
      redirect_to @user # redirects back to user page
    else
      flash[:error] = "Incorrect email or password."  #notifies users of incorrect email
      redirect_to login_path
    end
  end

  def destroy

    # logout #this is a method that lives in the sessions helper but is later removed
    session[:user_id] = nil #make user session equal nil which is logout
    flash[:notice] = "Successfully logged out." # notice for user that they have logged out
    redirect_to root_path
  end


   private

   def user_params
     params.require(:user).permit(:email, :password)
   end
end
