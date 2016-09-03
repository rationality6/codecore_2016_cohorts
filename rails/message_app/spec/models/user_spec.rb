require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.full_name' do

    it 'return the first name and last name concatenated' do
      u = User.new(first_name: 'Hyun', last_name: 'Ahn')
      expect(u.full_name).to eq('Hyun Ahn')
    end

    it 'require an email with a proper format' do
      u = User.new(first_name: 'Hyun', last_name: 'Ahn',
                   email: 'text', password: 'supersecret')
      expect(u).to be_invalid
    end

    it 'requires a last name' do
      u = User.new
      u.valid?
      expect(u.errors.messages).to have_key(:last_name)
    end

    it "generates a password_digest upon saving" do
      u = User.new email: "john@smith.com",password:"supersecret"
      u.save
      expect(u.password_digest).to be
    end


  end
end
