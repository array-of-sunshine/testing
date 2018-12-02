require 'rspec'

# print out numbers
# if it's divisible by 3 print fizz
# if it's divisible by 5 print buzz
# if it's divisible by both 3 and 5 print fizz_buzz
# 1,2,'fizz',4,'buzz','fizz',7,8,'fizz','buzz'

class FizzBuzz
  def output(number)
    if number % 15 == 0
      return 'fizz_buzz'
    elsif number % 5 == 0
      return 'buzz'
    elsif number % 3 == 0
      return 'fizz'
    else
      return number
    end
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fizzbuzz = FizzBuzz.new
      result = fizzbuzz.output(1)
      expect(result).to eq(1)
    end
    it 'should return 2 if given 2' do
      fizzbuzz = FizzBuzz.new
      result = fizzbuzz.output(2)
      expect(result).to eq(2)
    end
    it 'should return \'fizz\' if given 3' do
      fizzbuzz = FizzBuzz.new
      result = fizzbuzz.output(3)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' if given 5' do
      fizzbuzz = FizzBuzz.new
      result = fizzbuzz.output(5)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz\' if given 6' do
      fizzbuzz = FizzBuzz.new
      result = fizzbuzz.output(6)
      expect(result).to eq('fizz')
    end
    it 'should return \'fizz_buzz\' if given 15' do
      fizzbuzz = FizzBuzz.new
      result = fizzbuzz.output(15)
      expect(result).to eq('fizz_buzz')
    end

  end
end
