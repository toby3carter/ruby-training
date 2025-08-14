# frozen_string_literal: true

class Dice

  attr_accessor :values

  def roll(amount = 1)
    self.values = Array.new(amount){rand(1..6)}
  end

end
