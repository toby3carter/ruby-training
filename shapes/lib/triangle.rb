# frozen_string_literal: true

def triangle(a, b, c)
  
  sides = [a, b, c].sort
  
  if sides.first <= 0
    raise TriangleError, "All sides must be greater than 0"
  end

  if sides[0] + sides[1] <= sides[2]
    raise TriangleError, "The sum of the lengths of any two sides must be greater than the length of the third side"
  end

  if sides[0] == sides[1] && sides[1] == sides[2]
    :equilateral
  elsif sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2] 
    :isosceles
  else
    :scalene
  end
end

# Error class used in triangle_spec. No need to change this code.
class TriangleError < StandardError
end
