class Triangle
  attr_reader :side, :side_1, :side_2

  def initialize(side, side_1, side_2)
    @side = side
    @side_1 = side_1
    @side_2 = side_2
    
    if self.side + self.side_1 <= self.side_2 || self.side + self.side_2 <= self.side_1 || self.side_1 + self.side_2 <= self.side || self.side <= 0 || self.side_1 <= 0 || self.side_2 <= 0
      raise TriangleError
    end
  end

  def kind
    if self.side == self.side_1 && self.side == self.side_2
      :equilateral
    elsif self.side == self.side_1 || self.side == self.side_2 || self.side_1 == self.side_2
      :isosceles
    else 
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
