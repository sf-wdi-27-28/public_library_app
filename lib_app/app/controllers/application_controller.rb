class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  include SessionsHelper

  private

  def require_login
    unless current_user
      flash[:notice] = "You must log in to see the user page."
      redirect_to login_url
    end
  end
end
