class RgbToHex
  VALID_ARGS_LENGTH = 3.freeze
  MAX_RGB_NUMBER = 255.freeze
  MIN_RGB_NUMBER = 0.freeze
  DIGITS = 2.freeze
  BASE = 16.freeze

  def self.rgb(*rgb_args)
    are_valid?(rgb_args)

    return rounded(rgb_args).map { |rgb_value| to_hex(rgb_value) }.join()
  end

  def self.are_valid?(rgb_args)
    raise Exception.new 'Invalid number of arguments' if rgb_args.length != VALID_ARGS_LENGTH
  end

  def self.rounded(rgb_args)
    sanitized_numbers = []

    rgb_args.each do |rgb_value| 
      return sanitized_numbers << MIN_RGB_NUMBER if rgb_value < MIN_RGB_NUMBER
      return sanitized_numbers << MAX_RGB_NUMBER if rgb_value > MAX_RGB_NUMBER
      sanitized_numbers << rgb_value
    end

    return sanitized_numbers
  end

  def self.to_hex(rgb_value)
    rgb_value.to_s(BASE).ljust(DIGITS, '0').upcase
  end
end