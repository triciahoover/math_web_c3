require "minitest/autorun"
require_relative "math.rb"  #You have to change this what is in quotes to the name of your rb files

class TestMath < Minitest::Test  #The word Addition can be replace with the name of your project
	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_that_2_plus_3_equals_5
		assert_equal(5,addition(2,3))
	end

	def test_assert_that_9_minus_4_equals_5
		assert_equal(5,subtraction(9,4))
	end

	def test_assert_that_9_times_4_equals_36
		assert_equal(36,multiplication(9,4))
	end

	def test_assert_that_8_divided_by_4_equals_2
		assert_equal(2,division(8,4))
	end
end