def french_phone_number?(phone_number)
  # TODO: true or false?
  digits = phone_number.gsub(/[\s-]/, "")
  if digits.start_with?("0")
    digits.match?(/\A0[1-9]\d{8}\z/)
  elsif digits.start_with?("+33")
    digits.match?(/\A\+33[1-9]\d{8}\z/)
  else
    false
  end
end
