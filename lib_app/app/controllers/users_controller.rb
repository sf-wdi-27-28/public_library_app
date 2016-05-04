class UsersController < ApplicationController

  def new
    # we need to make
    # a new user
    # to pass to the
    # form later
    @user = User.new
    render :new
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.create(user_params) # calls user_params method
    login(@user)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
