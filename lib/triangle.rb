class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif (@side1 == @side2) && (@side2 == @side3)
      return :equilateral
    elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
      return :isosceles
    elsif (@side1 != @side2) && (@side2 != @side3)
      return :scalene
    end
  end

  class TriangleError < StandardError
    "The lengths of 2 sides are shorter than 1 side of the triangle, or one of your sides has a negative input."
  end

end
