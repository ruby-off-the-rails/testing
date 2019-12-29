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


# calculator = Calculator.new

# p calculator.add(4, 6)


# driver code

# calculator = Calculator.new

# p "testing the add method in the calculator class"
# if calculator.add(4,6) == 10
#   p "Test passes"
# else
#   p "test fails"
# end


RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two positive numbers' do
      calculator = Calculator.new
      result = calculator.add(4, 6)
      expect(result).to eq(10)
    end

    it 'should return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-10, -5)
      expect(result).to eq(-15)
    end
  end

  describe '#subtract' do

  end
end
