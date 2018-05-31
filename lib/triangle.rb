class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
  end

  def kind
    if valid_triangle?
      puts true 
    else 
      raise TriangleError 
    end 
    
    if x == y && y == z && x == z
      :equilateral
    elsif x != y && y != z && z != x
      :scalene 
    else 
      :isosceles
    end 
  end
  
  def valid_triangle? 
    x.positive? && y.positive? && z.positive? && x + y > z && x + z > y && y + z > x
  end 

class TriangleError < StandardError
  
end
