class RomanNumerals

  ONE, TEN, HUNDRED, THOUSAND = 1, 10, 100, 1000

  def initialize
    @answer = []
    @roman_numerals = { 1   => :I, 4   => :IV, 5   => :V, 9   => :IX,
                        10  => :X, 40  => :XL, 50  => :L, 90  => :XC,
                        100 => :C, 400 => :CD, 500 => :D, 900 => :CM, 1000 => :M}
  end

  def convert( number )

    fail "Can't convert number over 4000." if number > 4000
    return @roman_numerals[number].to_s if !@roman_numerals[number].nil?

    #convert the thousand's place
    thousand_place = number / THOUSAND
    process( THOUSAND, thousand_place )

    #convert the hundred's place
    left = number - thousand_place * THOUSAND
    hundred_place = left / HUNDRED
    process( HUNDRED, hundred_place )

    #convert the ten's place
    left = left - hundred_place * HUNDRED
    ten_place = left / TEN
    process( TEN, ten_place )

    #convert the one place
    one_place = left - ten_place * TEN
    process( ONE, one_place )

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
