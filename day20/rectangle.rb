class Rectangle
    def initialize(height, width)
        @height = height
        @width = width
    end

    def area
        @height * @width
    end

    def is_square
        @height == @width
    end
end
