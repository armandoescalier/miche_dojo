# frozen_string_literal: true

# Solution steps:
#  input.split(',')
#  -> ["hello", "world"]
#  input.split(' ').map { |word| word[0].downcase + word[1..-1].upcase }
#  -> ["hELLO", "wORLD"]
#  input.split(' ').map { |word| word[0].downcase + word[1..-1].upcase }.join(' ')
#  -> "hELLO wORLD"

def reverse_capitalize(input)
  input.split(' ').map { |word| word[0].downcase + word[1..-1].upcase }.join(' ')
end
