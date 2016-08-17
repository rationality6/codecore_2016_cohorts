require './rectangle.rb'
require 'minitest/autorun'

class RectangleTest < MiniTest::Test
    def test_area
        r = Rectangle.new 3, 8
        a = r.area
        assert_equal(24,a)
    end

    def test_is_square
        r = Rectangle.new 5,5
        a = r.is_square
        assert_equal(true,a)
    end
end
