def palindrome?(a_string)
  processed_string = a_string.downcase.gsub(/[^a-z0-9]/, '')
  processed_string.length.positive? && processed_string == processed_string.reverse
end
