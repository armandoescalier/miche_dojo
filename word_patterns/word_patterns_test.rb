# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'word_patterns'

# WordPatterns Testing
class WordPatternsTest < Minitest::Test
  def test_with_same_sequence
    assert_equal word_pattern('abab', 'apple banana apple banana'), true
  end

  def test_with_one_letter_pattern_and_one_word
    assert_equal word_pattern('a', 'apple'), true
  end

  def test_with_one_letter_pattern_and_same_word
    assert_equal word_pattern('aaaa', 'dog dog dog dog'), true
  end

  def test_with_three_letters_pattern_and_three_words
    assert_equal word_pattern('abac', 'car plane car train'), true
  end

  def test_with_different_pattern
    assert_equal word_pattern('abab', 'apple banana banana apple'), false
  end

  def test_with_one_letter_pattern_and_two_words
    assert_equal word_pattern('aaaa', 'cat cat dog cat'), false
  end

  # Additional test if note in README is omitted.
  def test_with_three_letters_pattern_and_two_words
    assert_equal word_pattern('abac', 'car plane car plane'), false
  end
end
