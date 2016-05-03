class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to @user
      flash[:notice] = "Welcome, #{@user.email}!"
    else
      flash[:error] = "Email must be unique"
      redirect_to signup_path
    end
  end
  def show
    @user = User.find_by_id(params[:id])
    if current_user != @user
      redirect_to root_path
    end
  end
  def party
    @user = current_user
    if current_user.nil?
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password)
  end
end
