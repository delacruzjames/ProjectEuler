# Problem
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.=
require 'minitest/autorun'
require 'pry'

class MultipleByNumberTest < Minitest::Test
  def test_numbers_3_or_5_below_10
    multiply_by_three_and_five = MultipleByNumber.new(3,5)
    assert_equal 23, multiply_by_three_and_five.below(10)
  end

  def test_numbers_3_or_5_below_1000
    multiply_by_three_and_five = MultipleByNumber.new(3,5)
    assert_equal 233168, multiply_by_three_and_five.below(1000)
  end
end

class MultipleByNumber
  attr_accessor :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  def below(number)
    arr = (1..number-1).to_a
    arr.select{|i| i if is_multiple?(i) }.sum
  end

  def is_multiple?(num)
    numbers.each do |n|
      return true if num % n == 0
    end
    return false
  end
end
