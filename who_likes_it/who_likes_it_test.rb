# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'who_likes_it'

# Who Likes It Tests
class WhoLikesItTest < Minitest::Test
  def test_without_names
    assert_equal likes([]), 'no one likes this'
  end

  def test_with_one_name
    assert_equal likes(['Peter']), 'Peter likes this'
  end

  def test_with_two_names
    assert_equal likes(%w[Jacob Alex]), 'Jacob and Alex like this'
  end

  def test_with_three_names
    assert_equal likes(%w[Max John Mark]), 'Max, John and Mark like this'
  end

  def test_with_four_names
    assert_equal likes(%w[Alex Jacob Mark Max]), 'Alex, Jacob and 2 others like this'
  end

  def test_with_more_than_four_names
    assert_equal likes(%w[Alex Jacob Mark Max David Luis]), 'Alex, Jacob and 4 others like this'
  end
end
