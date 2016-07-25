class Gum
    def crisis
        -42
    end
end

# and as for testing:

require 'test/unit'

class GumTest < Test::Unit::TestCase
    def test_crisis
        g = Gum.new
        assert_equal -42, g.crisis
    end
end
