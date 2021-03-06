require "roman_numerals.rb"

describe RomanNumerals do

  subject(:roman_numeral){ described_class.new }

  context "one digit" do
    it "should return 'I' when passed 1" do
      expect(roman_numeral.convert(1)).to eq "I"
    end
    it "should return 'II' when passed 2" do
      expect(roman_numeral.convert(2)).to eq "II"
    end
    it "should return 'IV' when passed 4" do
      expect(roman_numeral.convert(4)).to eq "IV"
    end
    it "should return 'V' when passed 5" do
      expect(roman_numeral.convert(5)).to eq "V"
    end
    it "should return 'VI' when passed 6" do
      expect(roman_numeral.convert(6)).to eq "VI"
    end
  end

  context "double-digit" do
    it "should return 'X' when passed 10" do
      expect(roman_numeral.convert(10)).to eq "X"
    end
    it "should return 'XI' when passed 11" do
      expect(roman_numeral.convert(11)).to eq "XI"
    end
    it "should return 'X' when passed 40" do
      expect(roman_numeral.convert(40)).to eq "XL"
    end
    it "should return 'XLIX' when passed 49" do
      expect(roman_numeral.convert(49)).to eq "XLIX"
    end
    it "should return 'L' when passed 50" do
      expect(roman_numeral.convert(50)).to eq "L"
    end
    it "should return 'LXXXVIII' when passed 88" do
      expect(roman_numeral.convert(88)).to eq "LXXXVIII"
    end
  end

  context "three-digit" do
    it "should return 'C' when passed 100" do
      expect(roman_numeral.convert(100)).to eq "C"
    end
    it "should return 'CCXLIII' when passed 243" do
      expect(roman_numeral.convert(243)).to eq "CCXLIII"
    end
    it "should return 'CD' when passed 400" do
      expect(roman_numeral.convert(400)).to eq "CD"
    end
    it "should return 'D' when passed 500" do
      expect(roman_numeral.convert(500)).to eq "D"
    end
  end

  context "four-digit" do
    context "when less than 4000" do
      it "should return 'M' when passed 1000" do
        expect(roman_numeral.convert(1000)).to eq "M"
      end
      it "should return 'MCCXLIII' when passed 1243" do
        expect(roman_numeral.convert(1243)).to eq "MCCXLIII"
      end
      it "should return 'MMMCMXCIX' when passed 3999" do
        expect(roman_numeral.convert(3999)).to eq "MMMCMXCIX"
      end
    end
    context "when more than 4000" do
      it "should return error" do
        expect{ roman_numeral.convert(4001) }.to raise_error "Can't convert number over 4000."
      end
    end
  end

end
