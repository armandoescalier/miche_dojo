MAX_VALUE = 255.freeze
MIN_VALUE = 0.freeze

def count_ip_addresses(start_ip_address, end_ip_address)
  sanitized_start_ip_address = start_ip_address.split(".").map(&:to_i)
  sanitized_end_ip_address = end_ip_address.split(".").map(&:to_i)
  ips_counter = 0

  sanitized_end_ip_address.each_with_index.reverse_each do |last_ip_number, index|
    initial_ip_number = sanitized_start_ip_address[index]

    next if initial_ip_number == last_ip_number 

    loop do
      break if initial_ip_number == last_ip_number 
      break if initial_ip_number == MAX_VALUE 

      if last_ip_number != MIN_VALUE && sanitized_end_ip_address[index + 1] == MIN_VALUE && ips_counter.zero?
        ips_counter += MAX_VALUE 
        ips_counter += last_ip_number
        break
      end
 
      initial_ip_number += 1
      ips_counter += 1
    end

    next
  end

  ips_counter
end