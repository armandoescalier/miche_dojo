gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'rgb_to_hex'

class RgbToHexTest < Minitest::Test
  def test_with_max_values
    assert_equal ("FFFFFF"), RgbToHex.rgb(255, 255, 255)
  end
  
  def test_with_one_value_over_limit
    assert_equal ("FFFFFF"), RgbToHex.rgb(255, 255, 300)
  end

  def test_with_only_zeros
    assert_equal ("000000"), RgbToHex.rgb(0,0,0)
  end

  def test_with_random_values
    assert_equal ("9400D3"), RgbToHex.rgb(148, 0, 211)
  end
end