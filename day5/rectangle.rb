class Rectangle
    attr_accessor :width
    attr_accessor :height
    def initialize(width_arg, height_arg)
        width = width_arg
        sheight = height_arg
    end

    def area
        @width * @height
    end

    def is_square
        if @width == @height
            'true'
        else
            'false'
        end
    end

    def is_square2
        @width == @height
    end
end

quad = Rectangle.new(30, 30)
puts quad.area
# puts quad.is_square
# puts quad.is_square2
# quad.width = 10
# puts quad.width
# puts quad.is_square
