require 'rails_helper'

RSpec.describe AnimalsController, type: :controller do
  describe '#new' do
    it 'renders the new template' do
      get :new
      expect(response).to(render_template(:new))
    end

    it 'instantiates a new campaign instance variable' do
      get :new
      expect(assigns(:animal)).to be_a_new(Animal)
    end
  end

  describe '#create' do
    context 'with valid parameters' do
      def valid_request
        post(:create, params: { animal: { title: 'good title' },
                                description: 'good descri',
                                goal: 8 })
      end

      it 'will add one row to db' do
        count_before = Animal.count
        valid_request
        count_after = Animal.count
        expect(count_after).to eq(count_before + 1)
      end

      it 'should render template show' do
        valid_request
        expect(response).to(redirect_to(animal_path(Animal.last)))
      end

      it 'set a flash message' do
        valid_request
        expect(flash[:notice]).to(be)
      end

      it 'returns the first name and last name concatenated' do
        u = User.new(first_name: 'John', last_name: 'Smith')
        expect(u.first_name).to eq('John')
      end
    end

    context 'with invalid parameters' do
      def invalid_request
        post(:create, params: { animal: { title: '' } })
      end

      it 'renders the new template' do
        invalid_request
        expect(response).to render_template(:new)
      end

      it "doesn't save the record to the database" do
        count_before = Campaign.count
        invalid_request
        count_after = Campaign.count
        expect(count_after).to(eq(count_before))
      end
    end

    describe '#show' do
      it 'render the show template' do
        animal = Animal.create! title: 'foobar'
        get :show, params: { id: animal.id }
        expect(response).to render_template(:show)
      end

      it 'defines an instance variable for campaign based passed id' do
        animal = Animal.create! title: 'foobar'
        get :show, params: { id: animal.id }
        expect(assigns(:animal)).to eq(animal)
      end
    end

    describe "#index" do
      it "renders the index template"do
        get :index
        expect(response).to render_template(:index)
      end

      it "defines an instance variable for all campaigns" do

      end
    end
  end
end
