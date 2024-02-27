# frozen_string_literal: true

def min_payment_difference(bills)
  min_diff = bills.sum

  bills.each_with_index do |_, index|
    first_half = bills[0..index]
    second_half = bills[index + 1..]

    diff = (first_half.sum - second_half.sum).abs
    min_diff = diff if diff < min_diff
  end

  min_diff
end
