require 'rspec'

class ChangeMachine
  def change(cents)
    money = []
    while cents >= 25
      money << 25
      cents -= 25
    end
    while cents >= 10
      money << 10
      cents -= 10
    end
    while cents >= 5
      money << 5
      cents -= 5
    end
    while cents > 0
      money << 1
      cents -= 1
    end
    return money
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      result = machine.change(1)
      expect(result).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      machine = ChangeMachine.new
      result = machine.change(2)
      expect(result).to eq([1, 1])
    end
    it 'should return [5,1] when given 6' do
      machine = ChangeMachine.new
      result = machine.change(6)
      expect(result).to eq([5, 1])
    end
    it 'should return [10,5,1,1,1,1] when given 19' do
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
