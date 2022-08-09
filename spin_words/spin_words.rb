# frozen_string_literal: true

def spin_words(string)
  sentence = string.split.map { |word| word.length > 4 ? word.reverse : word }.join(' ')
end
