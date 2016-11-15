require "roman_numerals.rb"

describe RomanNumerals do
  subject(:roman_numeral){ described_class.new }

  it "should return 'I' when passed 1" do
    expect(roman_numeral.convert(1)).to eq "I"
  end

  it "should return 'V' when passed 5" do
    expect(roman_numeral.convert(5)).to eq "V"
  end

  it "should return 'X' when passed 10" do
    expect(roman_numeral.convert(10)).to eq "X"
  end

  it "should return 'L' when passed 50" do
    expect(roman_numeral.convert(50)).to eq "L"
  end

  it "should return 'C' when passed 100" do
    expect(roman_numeral.convert(100)).to eq "C"
  end

  it "should return 'D' when passed 500" do
    expect(roman_numeral.convert(500)).to eq "D"
  end

  it "should return 'M' when passed 1000" do
    expect(roman_numeral.convert(1000)).to eq "M"
  end

end
