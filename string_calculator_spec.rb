require_relative 'string_calculator.rb'

RSpec.describe StringCalculator do
  let(:number) { "" }
  let(:instance) { StringCalculator.new(number) }

  describe '#calculator' do
    subject { instance.calculator }

    context 'when string is empty' do
      it 'returns 0' do
        expect(subject).to eq 0
      end

    end
    context 'when it is just one number' do
      let(:number) { "1" }

      it 'returns the number' do
        number = "1"
        expect(subject).to eq 1
      end
    end

    context 'when there are two numbers' do
      let(:number) { "1,2" }

      it 'returns the sum of the two numbers' do
        expect(subject).to eq 3
      end
    end

    context 'when there is a split line character in the string' do
      let(:number) { "1\n2" }

      it 'returns the sum of the two numbers splitted by a new line' do
        expect(subject).to eq 3
      end
    end

    context 'when there is a new line and a comma' do
      let(:number) { "1\n2,3" }

      it 'returns the sum of the three numbers splitted by a new line and a comma' do
        expect(subject).to eq 6
      end
    end

    context 'when there are multiple delimiters' do
      let(:number) { "///;1\n2,;3" }

      it 'returns the sum of the three numbers splitted by multiple delimiters' do
        expect(subject).to eq 6
      end
    end

    context 'when there are negative numbers' do
      let(:number) { "-1,-2" }

      it 'returns an exception message' do
        expect{ subject }.to raise_error "negatives not allowed-1-2"
      end
    end

    context 'when there are numbers greater than 1000' do
      let(:number) { "1,2000" }

      it 'returns the sum of the two numbers when the numbers are less than 1000' do
        expect(subject).to eq 1
      end
    end

    context 'when there are too many delimiters' do
      let(:number) { "//[***]\n1***2***3" }

      it 'returns the sum of the numbers in the string, no matter the string' do
        expect(subject).to eq 6
      end
    end

    context 'when there are far too many delimiters' do
      let(:number) { "//[*][%]\n1*2%3" }

      it 'returns the sum of the numbers in the string, no matter the string' do
        expect(subject).to eq 6
      end
    end

    context 'when the string is whatever' do
      let(:number) { "%,\n1,2,3" }

      it 'returns the sum of the numbers in the string, no matter the string' do
        expect(subject).to eq 6
      end
    end
  end
end
