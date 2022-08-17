# frozen_string_literal: true

def split_hash_by_key(hash, *args)
  splitted_hashes = []

  args.each_with_index do |current_key, index|
    raise 'One of the key given as argument is incorrect!' unless hash.key? current_key

    left_section  = hash.select { |key| key < current_key }
    right_section = hash.select { |key| key >= current_key }

    hash = right_section

    splitted_hashes << left_section unless left_section.empty?
    splitted_hashes << right_section if index == args.size - 1
  end

  splitted_hashes
end
