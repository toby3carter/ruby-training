# frozen_string_literal: true

def triangle(a, b, c)
  # WRITE THIS CODE
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c 
    :isosceles
  else
    :scalene
  end
end

# Error class used in triangle_spec. No need to change this code.
class TriangleError < StandardError

end

# def triangle(a, b, c)
#   if a <= 0 || b <= 0 || c <= 0
#     raise TriangleError, "All sides must be greater than 0"
#   end
# end
# 