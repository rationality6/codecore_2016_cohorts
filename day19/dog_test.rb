require './dog.rb'
require 'minitest/autorun'

class DogTest < MiniTest::Test
    def test_give_bone_maximum_of_3
        dog = Dog.new

        dog.give_bone('large')
        dog.give_bone('small')
        dog.give_bone('large')
        outcome = dog.give_bone('xxx-large')

        assert(3,outcome)
    end

    def test_eat_bone
        dog = Dog.new

        dog.give_bone('large')
        dog.give_bone('small')
        dog.give_bone('large')

        outcome = dog.eat_bone

        assert_equal('large',outcome)
    end

    def test_bone_count
        dog = Dog.new

        dog.give_bone('large')
        dog.give_bone('small')
        dog.give_bone('large')

        outcome = dog.bone_count

        assert_equal(3,outcome)

    end
end
