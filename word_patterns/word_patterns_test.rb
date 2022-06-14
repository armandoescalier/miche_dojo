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

  # Additional tests if note in README is omitted.
  def test_with_three_letters_pattern_and_two_words
    assert_equal word_pattern('abac', 'car plane car plane'), false
  end

  def test_with_pattern_and_words_having_different_length
    assert_equal word_pattern('ab', 'car plane boat train'), false
  end

  # Dojo tests
  def tests_from_dojo
    assert_equal word_pattern('abcdf', 'cat men dog tigger woman'), true
    assert_equal word_pattern('abbcc', 'aram zam zam'), false
    assert_equal word_pattern('abbccd', 'aram zam zam arafi arafi guli'), true
    assert_equal word_pattern('aa', 'cat cat cat'), false
  end
end
