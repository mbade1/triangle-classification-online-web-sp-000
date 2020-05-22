class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 > 0 && @side2 > 0 && @side3 > 0)
      true
    else
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
    if
    elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
      return :isosceles
    elsif (@side1 == @side2) && (@side2 == @side3)
      return :equilateral
    else
      return :scalene
    end
  end

end
