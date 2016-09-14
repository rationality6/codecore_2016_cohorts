class Api::BaseController < ApplicationController
  before_action :authenticate_api_user

  protect_from_forgery with: :null_session

  private

  def authenticate_api_user
    head :unauthorized unless current_api_user
  end

  def current_api_user
    @current_api_user = User.find_by_api_key params[:api_key]
  end

end
  
