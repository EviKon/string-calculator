require_relative 'string_calculator.rb'

RSpec.describe StringCalculator do
  let(:instance) { StringCalculator.new }
  describe '#calculator' do
    it 'returns 0' do
      number = ""
      expect(instance.calculator(number)).to eq 0
    end

    it 'returns the number' do
      number = "1"
      expect(instance.calculator(number)).to eq 1
    end

    it 'returns the sum of the two numbers' do
      number = "1,2"
      expect(instance.calculator(number)).to eq 3
    end

    it 'returns the sum of the two numbers splitted by a new line' do
      number = "1\n2"
      expect(instance.calculator(number)).to eq 3
    end

    it 'returns the sum of the three numbers splitted by a new line and a comma' do
      number = "1\n2,3"
      expect(instance.calculator(number)).to eq 6
    end

    it 'returns the sum of the three numbers splitted by multiple delimiters' do
      number = "///;1\n2,;3"
      expect(instance.calculator(number)).to eq 6
    end

    it 'returns an exception message' do
      number = "-1,-2"
      expect{ instance.calculator(number) }.to raise_error "negatives not allowed-1-2"
    end

    it 'returns the sum of the two numbers when the numbers are less than 1000' do
      number = "1,2000"
      expect(instance.calculator(number)).to eq 1
    end

    it 'returns the sum of the numbers in the string, no matter the string' do
      number = "//[***]\n1***2***3"
      expect(instance.calculator(number)).to eq 6
    end

    it 'returns the sum of the numbers in the string, no matter the string' do
      number = "//[*][%]\n1*2%3"
      expect(instance.calculator(number)).to eq 6
    end

    it 'returns the sum of the numbers in the string, no matter the string' do
      number = "%,\n1,2,3"
      expect(instance.calculator(number)).to eq 6
    end
  end
end
