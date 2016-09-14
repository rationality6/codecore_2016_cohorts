class PledgesController < ApplicationController
  before_action :authenticate_user!

  def create
    # redirect_to root_path if session[:user_id].nil?
    @pledge = Pledge.new pledge_params
    @campaign = Campaign.find params[:campaign_id]
    @pledge.campaign = @campaign
    @pledge.user = current_user
    @pledge.save
    redirect_to campaign_path(params[:campaign_id])
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount)
  end
end
