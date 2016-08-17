require 'rails_helper'

RSpec.describe CampaignsController, type: :controller do
  describe '#new' do
    it 'renders the new template' do
      get :new
      # response here is a method from RSpec Rails that we can use to match
      # the output or the result of making a specific request
      # render_template is an RSpec matcher for Rails
      expect(response).to render_template(:new)
    end

    it 'instantiates a new campaign instance variable' do
      get :new
      # assigns(:campaign) will check a variable named @campaign defined within
      # the controller.
      expect(assigns(:campaign)).to be_a_new(Campaign)
    end
  end

  describe '#create' do
    context 'with valid parameters' do
      def valid_request
        post :create, params: { campaign: { title: 'campaign title',
                                            description: 'hello',
                                            goal: 100_000,
                                            end_date: Time.now + 50.days } }
      end

      it 'saves a record to the database' do
        count_before = Campaign.count
        valid_request
        count_after = Campaign.count
        expect(count_after).to eq(count_before + 1)
      end

      it 'redirects to the campaign show page' do
        valid_request
        expect(response).to redirect_to(campaign_path(Campaign.last))
      end

      it 'sets a flash message' do
        valid_request
        expect(flash[:notice]).to be
      end
    end
    context 'with invalid parameters' do
      def invalid_request
        post :create, params: { campaign: { title: '' } }
      end

      it 'renders the new template' do
        invalid_request
        expect(response).to render_template(:new)
      end

      it "doesn't save the record to the database" do
        count_before = Campaign.count
        invalid_request
        count_after = Campaign.count
        expect(count_after).to eq(count_before)
      end
    end
  end

  describe '#show' do
    it 'renders the show template' do
      # GIVEN: a campaign created in the database
      campaign = FactoryGirl.create(:campaign)

      # WHEN: we make a GET request with id of the campaign
      get :show, params: { id: campaign.id }

      # THEN: renders the show template
      expect(response).to render_template(:show)
    end

    it 'defines an instance variable for campaign based on passed id' do
      campaign = FactoryGirl.create(:campaign)
      get :show, params: { id: campaign.id }
      expect(assigns(:campaign)).to eq(campaign)
    end
  end

  describe '#index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'defines an instance variable for all campaigns' do
      sleep 100
      campaign  = FactoryGirl.create(:campaign)
      campaign1 = FactoryGirl.create(:campaign)
      get :index
      expect(assigns(:campaigns)).to eq([campaign, campaign1])
    end
  end
end
