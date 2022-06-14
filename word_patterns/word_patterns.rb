# frozen_string_literal: true

def word_pattern(pattern, string)
  chars_pattern = pattern.chars
  words_pattern = string.split(' ')
  catalog = {}

  return false if chars_pattern.length != words_pattern.length

  chars_pattern.each_with_index do |char, index|
    catalog[char] = words_pattern[index] unless catalog.key?(char) || catalog.value?(words_pattern[index])
  end

  words_pattern.each_with_index { |word, index| return false if word != catalog[chars_pattern[index]] }
  true
end
