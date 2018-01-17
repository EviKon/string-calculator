class StringCalculator
  def calculator
    if ""
      0
    elsif self.length == 1
      self.to_i
    end
  end
end
