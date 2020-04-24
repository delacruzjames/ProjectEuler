# PROBLEM
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'concurrent'
require 'minitest/autorun'
require 'pry'

class LargestPrimeFactorTest < Minitest::Test
  def test_get_factor_of_10
    # skip
    prime_factor = LargestPrimeFactor.new(10)
    assert_equal [2,5], prime_factor.get_factor
  end

  def test_get_factor_of_13195
    # skip
    prime_factor = LargestPrimeFactor.new(13195)
    assert_equal [5,7,13,29], prime_factor.get_factor
  end

  def test_get_factor_of_600851475143
    skip
    prime_factor = LargestPrimeFactor.new(600851475143)
    assert_equal [5,7,13,29], prime_factor.get_factor
  end
end

# TODO
# ADD THREAD
class LargestPrimeFactor
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def get_factor
    # binding.pry
    new_arr = []
    # binding.pry
    arr = (1..number).to_a
    # binding.pry
    arr.each do |i|
      puts i
      unless i == 1 || i == number
        new_arr.push(i) if number % i == 0
      end
    end
    new_arr
  end
end
