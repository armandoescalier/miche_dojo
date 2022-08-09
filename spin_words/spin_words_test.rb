# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'spin_words'

# SpinWords Tests
class SpinWordsTest < Minitest::Test
  def test_from_train_section
    assert_equal spin_words('Welcome'), 'emocleW'
    assert_equal spin_words('Hey fellow warriors'), 'Hey wollef sroirraw'
  end

  def test_from_examples
    assert_equal spin_words('This is a test'), 'This is a test'
    assert_equal spin_words('This is another test'), 'This is rehtona test'
  end
end
