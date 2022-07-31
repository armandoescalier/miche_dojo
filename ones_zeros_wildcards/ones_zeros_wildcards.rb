# frozen_string_literal: true

def possibilities(string, array = [])
  if string.include? '?'
    zeros = string.sub('?', '0')
    ones  = string.sub('?', '1')

    array << zeros
    possibilities(zeros, array)

    array << ones
    possibilities(ones, array)
  else
    array.reject { |possibility| possibility.include? '?' }
  end
end
