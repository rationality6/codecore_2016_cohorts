require 'rails_helper'

RSpec.describe User, type: :model do
  it 'requires an email with a proper format' do
    u = User.new(email: "sdweff@gmialc.com", password_digest: 'supersecret')
    expect(u).to be_valid
  end
end
