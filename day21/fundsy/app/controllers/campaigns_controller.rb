class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new params.require(:campaign).permit(:title,
                                                              :description,
                                                              :goal,
                                                              :end_date)
    if @campaign.save
      redirect_to campaign_path(@campaign), notice: 'Campaign created!'
    else
      render :new
    end
  end

  def show
    @campaign = Campaign.find params[:id]
  end

  def index
    @campaigns = Campaign.order(:created_at)
  end

  def destroy
    campaign = Campaign.find params[:id]
    campaign.destroy
    redirect_to campaigns_path, notice: 'Campaign deleted'
  end
end
