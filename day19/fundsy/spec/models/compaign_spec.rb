require 'rails_helper'

RSpec.describe Campaign, type: :model do
    describe 'Validations' do
        # we can use 'it' mehtod (or specity) to define a test example. The method
        # takes afirst arguement which is the example
        # block of code where you actually write your test. Make the description
        # very clear so that the reader of the message knows what the test is about
        it 'requires a title' do
            # GIVEN : a campaign record with no title
            c = Campaign.new

            # WHEN : we run validations
            c.valid?

            # THEN : the record is invalid (it has errors)
            expect(c).to be_invalid
        end
    end
end
