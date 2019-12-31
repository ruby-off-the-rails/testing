require 'rspec'

# cents

class ChangeMachine
  def change(cents)
    [1]
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    # it 'should return [10,10,1,1,1] when given 23' do
    #   machine = ChangeMachine.new
    #   expect(machine.change(23)).to eq([10,10,1,1,1])
    # end
  end
end
