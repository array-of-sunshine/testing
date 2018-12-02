require 'rspec'

class ChangeMachine
  def change(cents)
    coins = [25,10,5,1]
    money = []
    coins.each do |coin|
      while cents >= coin
        money << coin
        cents -= coin
      end
    end
    return money
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      # skip
      machine = ChangeMachine.new
      result = machine.change(1)
      expect(result).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      # skip
      machine = ChangeMachine.new
      result = machine.change(2)
      expect(result).to eq([1, 1])
    end
    it 'should return [5,1] when given 6' do
      # skip
      machine = ChangeMachine.new
      result = machine.change(6)
      expect(result).to eq([5, 1])
    end
    it 'should return [10,5,1,1,1,1] when given 19' do
      # skip
      machine = ChangeMachine.new
      result = machine.change(19)
      expect(result).to eq([10,5,1,1,1,1])
    end
    it 'should return [25,25,25,25,10,5,1,1,1,1] when given 119' do
      machine = ChangeMachine.new
      result = machine.change(119)
      expect(result).to eq([25,25,25,25,10,5,1,1,1,1])
    end
  end
end
