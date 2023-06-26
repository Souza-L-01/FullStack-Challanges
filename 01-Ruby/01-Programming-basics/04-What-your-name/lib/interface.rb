require_relative "compute_name"

# TODO: ask for the first name
# TODO: ask for the middle name
# TODO: ask for the last name
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"

print "What's you first name?"
first_name = gets.chomp

puts "What's your middle name?"
middle_name = gets.chomp # I can add .upcase here
p middle_name

puts "What's your last name?"
last_name = gets.chomp

full_name = compute_name(first_name, middle_name, last_name)
puts "Hello, #{full_name}!"
