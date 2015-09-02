require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	# TODO - write tests here
	def test_has_teen
		assert_equal true, @m.has_teen?(13)
		assert_equal true, @m.has_teen?(19)
		assert_equal false, @m.has_teen?(12)		
	end

	def test_not_string
		assert_equal "not word", @m.not_string("word")
		assert_equal "not meep", @m.not_string("meep")
		assert_equal "not done", @m.not_string("done")
	end

	def test_icy_hot
		assert_equal true, @m.icy_hot(-10, 110)
		assert_equal false, @m.icy_hot(0, 110)
		assert_equal false, @m.icy_hot(-10, 100)
		assert_equal true, @m.icy_hot(100, -10)
	end
end
