# # Pseudo-code:

# # 1. Welcome

# # 2. Loop starts
#     # ask the user
#     # 2. Display menu (list / add / delete / mark )
# # 3. Get user action
# # 4. Perform the right action

# # TODO: you can build your christmas list program here!
# # 1. Create a Array of 'gift_list'
# gift_list = ["shirt","plutonium","books"]
# action = nil
# puts "Welcome to your Christmas gift list"

# while action != 'quit'
#   puts "Which action [list|add|delete|quit]?"
#   action = gets.chomp.downcase
#   case action
#   when 'list'
#     gift_list.each_with_index do |gift, i|
#       puts "#{i + 1} - #{gift.capitalize}"
#     end
#   when 'add'
#     puts "What do you want to add?"
#     new_gift = gets.chomp
#     gift_list << new_gift
#   when 'delete'
#     puts "Which one do you want to delete? (no.)"
#     index = gets.chomp.to_i - 1
#     gift_list.delete_at(index)
#   # MARK
#   else
#     puts "Sorry.. wrong action."
#   end
# end
# puts "Bye"

# TODO: you can build your christmas list program here!

gifts = [
    { name: "shirt", bought: false },
    { name: "dress", bought: false },
    { name: "cup", bought: false }
  ]
action = nil

puts "Welcome to your Christmas gift list"

while action != "quit"
    puts "Which action [list|add|delete|mark|quit]?"
    gifts.each {|item, price|}
    action = gets.chomp.downcase
    case action

    when "list"
        puts "Listed items:"
        gifts.each_with_index do |gift, i| 
            status = gift[:bought] ? "x" : " "
            puts "#{i + 1}: [#{status}] #{gift[:name].capitalize}"
        end

    when "add"
        puts "Add your gift:"
        gift_choice = gets.chomp.downcase
        gifts << {name: gift_choice, bought: false}

    when "delete"
        puts "Which item do you want to delete?"
        puts "Listed items:"
        # gifts.each_with_index {|gift, i| puts "#{i + 1}: #{gift.capitalize}" }
        index = gets.chomp.to_i - 1
        gifts.delete_at(index)

    when "mark"
        puts "Which item did you buy? (give me index/number)"
        index = gets.chomp.to_i - 1

        if gifts[index][:bought]
           gifts[index][:bought] = false 
        else
            gifts[index][:bought] = true
        end

    else
        puts "Sorry... wrong action"
    end

end
puts "See you soon!"

