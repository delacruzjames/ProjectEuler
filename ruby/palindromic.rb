# PROBLEM 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
require 'minitest/autorun'
require 'pry'

class PalindromicTest < Minitest::Test
  def test_is_palindromic
    # skip
    assert_equal false, Palindromic.is_palindromic?(123)
    assert_equal true, Palindromic.is_palindromic?(9009)
    assert_equal true, Palindromic.is_palindromic?(1221)
    assert_equal false, Palindromic.is_palindromic?(12321)
  end

  def test_product_of_2_given_numbers
    # skip
    assert_equal 9009, Palindromic.product_of(2)
  end

  def test_product_of_3_given_numbers
    #skip
    assert_equal 906609, Palindromic.product_of(3)
  end

  def test_product_of_4_given_numbers
    # skip
    assert_equal 99000099, Palindromic.product_of(4)
  end
end


class Palindromic
  def self.is_palindromic?(num)
    return false if !num.to_s.size.even?
    num.to_s == num.to_s.reverse
  end

  # TODO Refactor
  def self.product_of(num)
    # lets make a default 9 number
    largest_number = 0
    starting_num = []
    palindrome_list = []
    num.times do |n|
      starting_num << 9
    end

    # binding.pry
    a = starting_num.join().to_i
    b = a.dup

    (0..a).to_a.reverse.each do |x|
      (0..b).to_a.reverse.each do |y|
        answer = x * y
        if (self.is_palindromic?(answer) && largest_number <= answer)
          largest_number = answer
          break
        end
      end
    end
    return largest_number
  end
end
