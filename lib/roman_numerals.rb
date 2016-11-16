class RomanNumerals

  def initialize
    @answer = []
    @roman_numerals = { 1 => :I, 4 => :IV, 5 => :V,
                       10 => :X, 40 => :XL, 50 => :L,
                       100 => :C, 400 => :CD, 500 => :D, 1000 => :M}
  end

  def convert(number)
    return @roman_numerals[number].to_s if !@roman_numerals[number].nil?
    place = number / 10
    ten_place = place
    something( 10, ten_place )

    one_place = number - ten_place * 10
    something( 1, one_place )
    @answer.inject(:+)
  end

  def something( place , place_digit )
    if place_digit > place * 5
      place_digit -= place * 5
      @answer << @roman_numerals[ place * 5 ].to_s
    end
    place_digit.times{ @answer << @roman_numerals[ place ].to_s }
  end

end
