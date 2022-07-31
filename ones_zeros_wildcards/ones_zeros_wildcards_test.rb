# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'ones_zeros_wildcards'

# Wildcards Tests
class WildcardsTest < Minitest::Test
  def test_case_code_wars
    assert_equal possibilities('?').sort, %w[0 1]
    assert_equal possibilities('101?').sort, %w[1010 1011]
    assert_equal possibilities('??').sort, %w[00 01 10 11]
    assert_equal possibilities('10??').sort, %w[1000 1001 1010 1011]
    assert_equal possibilities('1?1?').sort, %w[1010 1011 1110 1111]
  end

  def test_case_azcuaga
    assert_equal %w[0 1], possibilities('?')
    assert_equal %w[10 11], possibilities('1?')
    assert_equal %w[101 111], possibilities('1?1')
    assert_equal %w[000 001 010 011 100 101 110 111], possibilities('???')
    assert_equal %w[1010101010011 1010101110011], possibilities('1010101?10011')
    assert_equal %w[
      10100110101000 10100110101001 10100110101010 10100110101011
      10101110101000 10101110101001 10101110101010 10101110101011
      10110110101000 10110110101001 10110110101010 10110110101011
      10111110101000 10111110101001 10111110101010 10111110101011
      11100110101000 11100110101001 11100110101010 11100110101011
      11101110101000 11101110101001 11101110101010 11101110101011
      11110110101000 11110110101001 11110110101010 11110110101011
      11111110101000 11111110101001 11111110101010 11111110101011
    ], possibilities('1?1??1101010??')
  end
end
