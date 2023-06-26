# Pseudo code
# 1. Greet the user

choice = nil
p "Hi there, let's caculate!"
while choice != "n"
  p "What's your first number"
first_number = gets.chomp.to_i
p "What's your second number"
second_number = gets.chomp.to_i
p "Choose the operation = [+] [-] [*] [/]"
operator = gets.chomp
result = operation(first_number, second_number, operator)
p "Your answer is #{result}"
p "DO you want to calculate again? [y] or [n]"
choice = gets.chomp  
end

