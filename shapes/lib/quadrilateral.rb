# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  
  angles = [a, b, c, d].sort

  if angles.any? { |angle| angle <= 0 } # When any angle is lower than or equal to 0 (This completes two scenarios from the spec file)
    raise QuadrilateralError, "All angles must be greater than 0"
  end

  if angles[0] + angles[1] + angles[2] + angles[3] != 360 # When the sum of the angles is not equal to 360
    raise QuadrilateralError, "The sum of the angles must equal 360"
  end

  if angles.uniq == [90]
    [:square, :rectangle]
  elsif two_pairs_of_equal_angles?(angles)
    [:parallelogram, :rhombus]
  else
    [:quadrilateral]
  end
end

def two_pairs_of_equal_angles?(angles)
  freq = Hash.new(0)
  angles.each { |a| freq[a] += 1 }
  freq.values.sort == [2, 2]
end

# Error class used in quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
