# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'reverse_capitalize'

class ReverseCapitalizeTest < Minitest::Test
  def test_reverse_with_downcase
    assert_equal 'hELLO wORLD', reverse_capitalize('hello world')
  end

  def test_with_uppercase
    assert_equal 'hELLO wORLD', reverse_capitalize('HELLO WORLD')
  end

  def test_with_capitalize
    assert_equal 'hELLO wORLD', reverse_capitalize('Hello World')
  end

  def test_with_second_word_capitalize
    assert_equal 'hELLO wORLD', reverse_capitalize('hello World')
  end

  def test_with_spaces
    assert_equal 'hELLO wORLD', reverse_capitalize('hello world ')
  end

  def test_with_spaces_at_the_beginning
    assert_equal 'hELLO wORLD', reverse_capitalize(' hello world')
  end
end
