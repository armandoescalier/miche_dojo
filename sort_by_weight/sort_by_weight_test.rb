# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'sort_by_weight'

class SortByWeightTest < Minitest::Test
  def test_sort_by_weight
    assert_equal '32,123,151,323,27', sort_by_weight('123,27,151,323,32')
  end

  def test_sort_by_weight_with_two_numbers_with_same_weight
    assert_equal '32,123,151,323,27,54', sort_by_weight('123,54,151,323,32,27')
  end
end
