class RomanNumerals

  def convert(number)
    roman_numerals = { 1 => :I, 5 => :V, 
                       10 => :X, 50 => :L,
                       100 => :C, 500 => :D, 1000 => :M}
    return roman_numerals[number].to_s
  end

end
