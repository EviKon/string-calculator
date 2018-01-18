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
  end
end
