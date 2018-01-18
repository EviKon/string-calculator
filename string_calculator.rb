class StringCalculator
  def calculator(string)
    if string == ""
      0
    elsif string.length == 1
      string.to_i
    else
      more_numbers(string)
    end
  end

  def more_numbers(string)
    string.split(/\D+/).inject(0) { |sum, n| sum + n.to_i }
  end
end
