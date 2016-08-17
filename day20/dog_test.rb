require './dog.rb'
require 'minitest/autorun'

class DogTest < MiniTest::Test
    def test_give_bone_maximum_of_3
        dog = Dog.new

        dog.give_bone('large')
        dog.give_bone('small')
        dog.give_bone('large')
        dog.give_bone('large')
        outcome = dog.give_bone('xxx-large')
        p outcome
        assert(3,outcome)
    end

    def test_eat_bone
        dog = Dog.new

        dog.give_bone('large')
        dog.give_bone('small')
        dog.give_bone('medium')

        outcome = dog.eat_bone

        assert_equal('medium',outcome)
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
