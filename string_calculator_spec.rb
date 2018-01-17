require_relative 'string_calculator.rb'

RSpec.describe StringCalculator do
  it 'returns 0' do
    subject { "" }

    expect(subject.calculator).to eql 0
  end

  it 'returns the number' do
    subject { "1" }

    expect(subject.calculator).to eql 1
  end
end
