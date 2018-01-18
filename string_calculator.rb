class StringCalculator
  def calculator(string)
    if string == ""
      0
    elsif string.length == 1
      string.to_i
    else
      string.split(",").inject(0) { |sum, n| sum + n.to_i }
    end
  end
end
