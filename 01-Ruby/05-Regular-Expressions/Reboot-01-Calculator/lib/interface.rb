# TODO: you can build your calculator program here!
require_relative calculator

# Pseudo code
# 1. Greet the user
p "Hi there, let's caculate!"
# 2. Ask for the first number
p "What's your first number"
# 3. Get the first number (Integer)
first_number = gets.chomp.to_i
# 4. Ask for the second number
p "What's your second number"
# 5. Get the second number (Integer)
second_number = gets.chomp.to_i
# 6. Ask for the operator
p "Choose the operation = [+] [-] [*] [/]"
# 7. Get the operator (Integer)
operator = gets.chomp
# 8. Perform the calculation

result = operation(first_number, second_number, operator)
# 9. Display the result

p "Your answer is #{result}"

# ask the user if they want to calculate again
p "DO you want to calculate again? [y] or [n]"
# get yes or no
choice = gets.chomp
# if yes we loop, if no: end