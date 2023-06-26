horses_names = ["Horse1", "Horse2", "Horse3"]

def winner(horse)
    horse.sample #.(1 + rand(array.count)) 
end

puts "#{winner(horses_names)}"