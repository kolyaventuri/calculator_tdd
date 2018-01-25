class Calculator
  attr_reader :total

  def initialize
    @total = 0
  end

  def add(value)
    @total += value
  end


  def subtract(value)
    @total -= value
  end

  def clear
    @total = 0
  end
end
