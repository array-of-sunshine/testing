require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# driver code
calculator = Calculator.new

# p "About to test the add method"
# if calculator.add(3,5) == 8
#   p "test passes"
# else
#   p "test fails"
# end

# rspec
RSpec.describe Calculator do  # all the code that tests the calculator class
  describe '#add' do # all the code for the add method
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(3, 5)
      expect(result).to eq(8)
    end
    it 'should return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-3, -5)
      expect(result).to eq(-8)
    end
  end
  describe '#subtract' do
    # all the code to test the subtract method
  end
end
