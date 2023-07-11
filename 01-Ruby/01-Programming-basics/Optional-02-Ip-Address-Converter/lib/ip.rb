def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  binary_components = ip_address.split('.').map { |num| num.to_i.to_s(2).rjust(8, "0") }
  binary_components.join.to_i(2)
end

def num_to_ip(number)
  # TODO: return the string IP address from the `number`
  decimal_components = number.to_s(2).rjust(32, "0").scan(/.{8}/).map { |num| num.to_i(2) }
  decimal_components.join('.')
end
