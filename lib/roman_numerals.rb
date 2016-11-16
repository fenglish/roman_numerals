class RomanNumerals

  def initialize
    @answer = []
    @roman_numerals = { 1   => :I, 4   => :IV, 5   => :V, 9   => :IX,
                        10  => :X, 40  => :XL, 50  => :L, 90  => :XC,
                        100 => :C, 400 => :CD, 500 => :D, 900 => :CM, 1000 => :M}
  end

  def convert(number)
    return @roman_numerals[number].to_s if !@roman_numerals[number].nil?

    #convert the thousand's place
    thousand_place = number / 1000
    process( 1000, thousand_place )

    #convert the hundred's place
    place = number - thousand_place * 1000
    hundred_place = place / 100
    process( 100, hundred_place )

    #convert the ten's place
    place = place - hundred_place * 100
    ten_place = place / 10
    process( 10, ten_place )

    #convert the one place
    one_place = place - ten_place * 10
    process( 1, one_place )

    @answer.inject(:+)

  end

  def process( place , place_digit )
    if place * 4 == place_digit * place
      place_digit -= 4
      @answer << @roman_numerals[ place * 4 ].to_s
    elsif place * 9 == place_digit * place
      place_digit -= 9
      @answer << @roman_numerals[ place * 9 ].to_s
    elsif place * 5 < place_digit * place
      place_digit -= 5
      @answer << @roman_numerals[ place * 5 ].to_s
    end
    place_digit.times{ @answer << @roman_numerals[ place ].to_s }
  end

end
