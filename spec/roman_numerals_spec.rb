require "roman_numerals.rb"

describe RomanNumerals do
  subject(:roman_numeral){ described_class.new }

    it "should return 'I' when passed 1" do
      expect(roman_numeral.convert(1)).to eq "I"
    end

    it "should return 'IV' when passed 4" do
      expect(roman_numeral.convert(4)).to eq "IV"
    end

    it "should return 'V' when passed 5" do
      expect(roman_numeral.convert(5)).to eq "V"
    end

    it "should return 'X' when passed 10" do
      expect(roman_numeral.convert(10)).to eq "X"
    end

    it "should return 'X' when passed 40" do
      expect(roman_numeral.convert(40)).to eq "XL"
    end

    it "should return 'L' when passed 50" do
      expect(roman_numeral.convert(50)).to eq "L"
    end

    it "should return 'C' when passed 100" do
      expect(roman_numeral.convert(100)).to eq "C"
    end

    it "should return 'CD' when passed 400" do
      expect(roman_numeral.convert(400)).to eq "CD"
    end

    it "should return 'D' when passed 500" do
      expect(roman_numeral.convert(500)).to eq "D"
    end

    it "should return 'M' when passed 1000" do
      expect(roman_numeral.convert(1000)).to eq "M"
    end

    it "should return 'II' when passed 2" do
      expect(roman_numeral.convert(2)).to eq "II"
    end

    it "should return 'VI' when passed 6" do
      expect(roman_numeral.convert(6)).to eq "VI"
    end

    it "should return 'XI' when passed 11" do
      expect(roman_numeral.convert(11)).to eq "XI"
    end

    it "should return 'XLVIII' when passed 49" do
      expect(roman_numeral.convert(49)).to eq "XLVIII"
    end

end
