# frozen_string_literal: true

# Solution steps:
#  input.split(',')
#   -> ["123", "54", "151", "323", "32", "27"]
#  input.split(',').map { |number| number.chars.map(&:to_i).sum }
#   ->[6, 9, 7, 8, 5, 9]
#  input.split(',').map { |number| number.chars.map(&:to_i).sum }.zip(input.split(','))
#   -> [[6, "123"], [9, "54"], [7, "151"], [8, "323"], [5, "32"], [9, "27"]]
#  input.split(',').map { |number| number.chars.map(&:to_i).sum }.zip(input.split(',')).sort
#   -> [[5, "32"], [6, "123"], [7, "151"], [8, "323"], [9, "27"], [9, "54"]]
#  input.split(',').map { |number| number.chars.map(&:to_i).sum }.zip(input.split(',')).sort.map(&:last)
#   -> ["32", "123", "151", "323", "27", "54"]
#  input.split(',').map { |number| number.chars.map(&:to_i).sum }.zip(input.split(',')).sort.map(&:last).join(',')
#   -> "32,123,151,323,27,54"

def sort_by_weight(input)
  input.split(',').map { |number| number.chars.map(&:to_i).sum }.zip(input.split(',')).sort.map(&:last).join(',')
end
