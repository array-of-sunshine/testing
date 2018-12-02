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

  def square(number)
    return number * number
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
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(10, 3)
      expect(result).to eq(7)
    end
    it 'should return the difference of two negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(-10, -3)
      expect(result).to eq(-7)
    end
    # all the code to test the subtract method
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(6, 5)
      expect(result).to eq(30)
    end
  end
  describe '#divide' do
    it 'should return the quotient' do
      calculator = Calculator.new
      result = calculator.divide(20, 5)
      expect(result).to eq(4)
    end
  end
  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
  end
  describe '#power' do
    it 'should return the power of two numbers' do
      calculator = Calculator.new
      result = calculator.power(2,3)
      expect(result).to eq(8)
    end
  end
end
