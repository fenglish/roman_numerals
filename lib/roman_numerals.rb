class RomanNumerals

  def convert(number)
    answer = []
    roman_numerals = { 1 => :I, 4 => :IV, 5 => :V,
                       10 => :X, 40 => :XL, 50 => :L,
                       100 => :C, 400 => :CD, 500 => :D, 1000 => :M}
    return roman_numerals[number].to_s if !roman_numerals[number].nil?
    jyu = number / 10
    ichi = number - jyu * 10
    if ichi > 5
      ichi -= 5
      answer << roman_numerals[5].to_s
    end
    ichi.times{ answer << roman_numerals[1].to_s }
    answer.inject(:+)
  end

end
