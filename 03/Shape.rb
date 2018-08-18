
class Shape
    # ?
    # private_class_method :new
    def initialize(num_sides, perimeter)
        puts('创建图形', num_sides, perimeter)
    end
    def Shape.create(num_sides, side_length)
        return Shape.new(num_sides, side_length * num_sides)
    end
end
triangle = Shape.create(3, 5)