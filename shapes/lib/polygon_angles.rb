# frozen_string_literal: true

def internal_angle(number_of_sides)
  if number_of_sides == 5
    108
  elsif number_of_sides == 6
    120
  elsif number_of_sides == 7
    128.57
  elsif number_of_sides == 8
    135
  elsif number_of_sides == 9
    140
  else number_of_sides == 10
    144
  end
end

def external_angle(number_of_sides)
  if number_of_sides == 5
    72
  elsif number_of_sides == 6
    60
  elsif number_of_sides == 7
    51.43
  elsif number_of_sides == 8
    45
  elsif number_of_sides == 9
    40
  else number_of_sides == 10
    36
  end
end
