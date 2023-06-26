def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  return -1 if min > max
  sum = 0

  for i in min..max 
    sum += i
  end
  sum
end

puts sum_with_for(1, 100)   # Output: 5050
puts sum_with_for(7, 42)    # Output: 882
puts sum_with_for(10, 5)    # Output: -1

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  return -1 if min > max

  sum = 0
  i = min
  while i <= max
    sum += i
    i += 1
  end
  sum
end

puts sum_with_while(1, 100) # Output: 5050
puts sum_with_while(7, 42)  # Output: 882
puts sum_with_while(10, 5)  # Output: -1