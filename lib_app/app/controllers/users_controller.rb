class UsersController < ApplicationController

  def index
    @user = Users.all
  end


end
