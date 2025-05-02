# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  angles = [a, b, c, d].sort

  if angles.any? { |angle| angle <= 0 }
    raise QuadrilateralError, "All angles must be greater than 0"
  end
  if angles.all? { |angle| angle == 90 }
    [:square, :rectangle]
  end

end

# Error class used in quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
