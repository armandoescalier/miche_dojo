# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'bills_to_pay'

class BillsToPayTest < Minitest::Test
  def test_min_payment_difference
    assert_equal 1, min_payment_difference([1, 2, 3, 4, 5, 6])
  end
end
