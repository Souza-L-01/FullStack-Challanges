# TODO: you can build your horse race program here!
horses = ["Pepper mint", "Thunder", "Blaze of Glory", "Not a giraff", "Rustic Rebel" ]
# p winner
# 1. Greet the user
puts "Welcome to the horse race!"
# START LOOP
# When the user doesn't have enough money the loop stops
# Display balance
winner = horses.sample
# 2. Display the horses' names
# 3. Ask for the user's choice
puts "\nPlease choose the number of your horse"
horses.each_with_index do |horse, i|
  puts "#{i + 1} - #{horse}"
end
# 4. Get the choice
index = gets.chomp.to_i - 1
#  1 - 1 = 0
# Array[index]
# 5. Run the bet *
#   5.1. Ask the computer to pick the winner [Array]
#   5.2. Compare the choice with the winner
# 6. Display a message (win, lose)
if horses[index] == winner
  # + 50
  puts "You won"
else
  # -10
  puts "You lost."
end
# END LOOP


Message batch-1224-amsterdam

