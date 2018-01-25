require "minitest"
require "minitest/autorun"
require "minitest/pride"

require "./lib/Calculator"

class CalculatorTest < Minitest::Test

  def test_calculator_object_exists
    calculator = Calculator.new
    assert_instance_of Calculator, calculator
  end

  def test_calculator_total_initialized_to_zero
    calculator = Calculator.new
    assert_equal 0, calculator.total
  end

  def test_calculator_adds_numbers_to_total
    calculator = Calculator.new
    assert_equal 5, calculator.add(5)
    assert_equal 5, calculator.total

    assert_equal 20, calculator.add(15)
    assert_equal 20, calculator.total
  end

  def test_calculator_subtracts_numbers_from_total
    calculator = Calculator.new
    assert_equal (-5), calculator.subtract(5)
    assert_equal (-5), calculator.total

    assert_equal (-20), calculator.subtract(15)
    assert_equal (-20), calculator.total
  end

  def test_calculator_adds_negatives
    calculator = Calculator.new
    assert_equal (-5), calculator.add(-5)
    assert_equal (-5), calculator.total
  end

  def test_calculator_subtracts_negatives
    calculator = Calculator.new
    assert_equal 5, calculator.subtract(-5)
    assert_equal 5, calculator.total
  end

  def test_calculator_clears_total
    calculator = Calculator.new
    assert_equal 0, calculator.clear
    assert_equal 0, calculator.total
  end

end
