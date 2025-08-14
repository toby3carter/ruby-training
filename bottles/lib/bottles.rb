# frozen_string_literal: true

class Bottles
  def verse(number)
    case number
    when 0
      zero_bottles_verse
    when 1
      one_bottle_verse
    when 2
      two_bottles_verse
    else
      standard_verse(number)
    end
  end

  def verses(start_number, end_number)
    result = []
    start_number.downto(end_number) do |n|
      result << verse(n)
    end
    result.join("\n") + "\n"
  end

  def sing
    verses(99, 0)
  end



  private

  def zero_bottles_verse
    <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
  end

  def one_bottle_verse
    <<~VERSE
      1 bottle of beer on the wall, 1 bottle of beer.
      Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
  end

  def two_bottles_verse
    <<~VERSE
      2 bottles of beer on the wall, 2 bottles of beer.
      Take one down and pass it around, 1 bottle of beer on the wall.
    VERSE
  end

  def standard_verse(number)
    <<~VERSE
      #{number} bottles of beer on the wall, #{number} bottles of beer.
      Take one down and pass it around, #{number - 1} bottles of beer on the wall.
    VERSE
  end
end

# Error class used in bottles_spec. No need to change this code.
class BottlesError < StandardError;
end
