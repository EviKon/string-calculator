class StringCalculator
  def initialize(string)
    @string = string
  end

  def calculator
    raise error if string.include?("-")

    add
  end

  private

  attr_reader :string

  def add
    string.split(/\D+/).inject(0) do |sum, n|
      if n.to_i > 1000
        sum
      else
        sum + n.to_i
      end
    end
  end

  def error
    "negatives not allowed" + string.split(",").join
  end
end
