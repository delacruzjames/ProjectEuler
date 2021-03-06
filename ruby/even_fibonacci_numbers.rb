# PROBLEM
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
require 'minitest/autorun'
require 'pry'

class EvenFibonacciNumbersTest < Minitest::Test
  def test_sum_even_numbers_from_10_terms
    # skip
    fibonacci = EvenFibonacciNumbers.new(10)
    assert_equal 44, fibonacci.sum_even_numbers_from_terms
  end

  def test_sum_even_numbers_from_1000_terms
    # skip
    fibonacci = EvenFibonacciNumbers.new(1000)
    assert_equal 4613732, fibonacci.sum_even_numbers_from_terms
  end
end


class EvenFibonacciNumbers
  attr_accessor :term

  def initialize(term)
    @term = term
  end

  def sum_even_numbers_from_terms
    arr = []
    term.times do |n|
      result = fibo(n)
      arr.push(result) if result <= 4000000
    end
    arr.select{|a| a if a.even? }.sum
  end

  def fibo(num)
    a = 1
    b = 2

    num.times do
      temp = a
      a = b
      b = temp +a
    end
    return a
  end
end
