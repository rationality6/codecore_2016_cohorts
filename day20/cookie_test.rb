require './cookie.rb'
require 'minitest/autorun'

# class AwesomeTest < Minitest::Test
#     def test_somthing
#         assert_squal(2, 1 + 1)
#     end
#
# end

class CookieTest < MiniTest::Test
    def test_calorie_count
        # GIVEN: we have a cookie object with 5g of sugar and 7g of flour
        c = Cookie.new 5, 7

        # WHEN: we call calorie_count on the object that we have

        outcome = c.calorie_count

        # Then: We should get back 48 (calories)
        assert_equal(48, outcome)
    end
end
