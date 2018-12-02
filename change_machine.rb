require 'rspec'

class ChangeMachine
  def change(cents)
    money = []
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
  end
end
