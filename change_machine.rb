require 'rspec'

# cents

class ChangeMachine
  def change(cents)
    coins = []
    values_of_coins = [25,10,5,1]

    values_of_coins.each do |value|
      while cents >= value
        coins << value
        cents -= value
      end
    end
    # p coins
    return coins
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1,1])
    end
    it 'should return [1,1,1] when given 3' do
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1,1,1])
    end

    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end

    it 'should return [5,1,1] when given 7' do
      machine = ChangeMachine.new
      expect(machine.change(7)).to eq([5,1,1])
    end

    it 'should return [10,1,1] when given 12' do
      machine = ChangeMachine.new
      expect(machine.change(12)).to eq([10,1,1])
    end

    it 'should return [25,25,25,25,10,1] when given 111' do
      machine = ChangeMachine.new
      expect(machine.change(111)).to eq([25,25,25,25,10,1])
    end

    # it 'should return [10,10,1,1,1] when given 23' do
    #   machine = ChangeMachine.new
    #   expect(machine.change(23)).to eq([10,10,1,1,1])
    # end
  end
end
