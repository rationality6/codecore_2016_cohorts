class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def user_signed_in?
    session[:user_id].present?
  end
  helper_method :user_signed_in?
end
