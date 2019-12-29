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
    return (dividend.to_f / divisor.to_f)
  end

  def square(number)
    return number * number
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
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(14,3)
      expect(result).to eq(11)
    end
    it 'should return the difference of two negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(-14,-2)
      expect(result).to eq(-12)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-14,2)
      expect(result).to eq(-28)
    end
  end

  describe '#divide' do
    it 'should return the quotient of the dividend and divisor' do
      calculator = Calculator.new
      result = calculator.divide(25,5)
      expect(result).to eq(5)
    end
    it 'should return the quotient of the dividend and divisor' do
      calculator = Calculator.new
      result = calculator.divide(3,2)
      expect(result).to eq(1.5)
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
    it 'should return the power of a number and another number' do
      calculator = Calculator.new
      result = calculator.power(4, 3)
      expect(result).to eq(64)
    end
  end
end
