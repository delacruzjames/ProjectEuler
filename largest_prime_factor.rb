# PROBLEM
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'concurrent'
require 'minitest/autorun'
require 'pry'

class LargestPrimeFactorTest < Minitest::Test
  def test_get_factor_of_24
    # skip
    assert_equal 3, LargestPrimeFactor.largest_prime_factor(24)
  end

  def test_get_factor_of_13195
    # skip
    assert_equal 29, LargestPrimeFactor.largest_prime_factor(13195)
  end

  def test_get_factor_of_600851475143
    # skip
    assert_equal 6857, LargestPrimeFactor.largest_prime_factor(600851475143)
  end
end

# TODO
# ADD THREAD
class LargestPrimeFactor
  def self.largest_prime_factor(number)
    i = 1
    largest_number = 0

    while i <= number
      if ((number % i == 0) && is_prime?(i))
       largest_number = i
       number = number/i
     end
     i+=1
    end
    largest_number
  end

  private
    def self.is_prime?(number)
      arr = Array (2..Math.sqrt(number).floor)
      arr = arr.select { |x| number % x == 0}
      return true if arr.empty?
      false
    end
end
