gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'count_ip_addresses'

class CountIpAddressesTest < Minitest::Test
  def test_with_50_addresses
    assert_equal (50), count_ip_addresses("10.0.0.0", "10.0.0.50")
  end
  def test_with_256_addresses
    assert_equal (256), count_ip_addresses("10.0.0.0", "10.0.1.0")
  end
  def test_with_246_addresses
    assert_equal (246), count_ip_addresses("20.0.0.10", "20.0.1.0")
  end
  def test_with_20_addresses
    assert_equal (20), count_ip_addresses("192.1.168.10", "192.1.168.30")
  end
end