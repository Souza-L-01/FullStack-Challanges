# TODO: you can build your horse race program here!
horses = ["Horse1", "Horse2", "Horse3"]
balance = 100

p "Hi there, let's race!"
p "Your balance #{balance}"
winner = horses.sample
p winner

while balance >= 1 #until balance == 0 
p "Here are your choices: "
p "\nPick your choice:"

horses.each_with_index do |horse, choice|
  puts "#{choice + 1} . #{horse}"
end
choice = gets.chomp.to_i - 1

if horses[choice] == winner
    balance =+ 50
    puts "Your balance #{balance}"
else
    balance -= 10
   puts "Your balance #{balance}"
end

end
# 6. Display a message (win, lose)
# Step 2 - Make it loop!

# What about adding a balance to the game? 
# Let’s say you arrive to the horse race with 100€, win 50€ 
# if you place a correct bet and lose 10€ if your horse does not win. 
# What do you need to change to your horse race program? 
# Let’s make sure the user can’t play if she/he does not have enough money.