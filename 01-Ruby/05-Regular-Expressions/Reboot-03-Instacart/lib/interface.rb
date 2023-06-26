# TODO: you can build your instacart program here!

item = nil
cart = {}
bill = 0
store = {
  "kiwi" => {:price => 1.25, :stock => 5},
  "banana" => {:price => 0.5, :stock => 5},
  "mango" => {:price => 4, :stock => 5},
  "asparagus" => {:price => 9, :stock => 5}
}

puts "Welcome to Happy Shoppy 😍🛍"


until item == "quit"
  puts "\nIn our store today:"

  store.each {|item, details| puts "- #{item}: #{details[:price]}€ (#{details[:stock]} available)"}

  puts "\nWhich item? (or 'quit' to checkout)"
  item = gets.chomp

  if store.key?(item)
    puts "How many?"
    amount = gets.chomp.to_i

    if amount > store[item][:stock]
      puts "🥲 Sorry, we only have #{store[item][:stock]} left"
    else
    cart.key?(item) ? cart[item] += amount : cart[item] = amount
    store[item][:stock] -= amount
    end

  elsif item == "quit"
    puts "\n--💰💰 BILL 💰💰-- "

    cart.each do|item, amount|
    price = store[item][:price]
    
    puts "🛒 #{item}: #{amount} x #{price}€ = #{price * amount}€"

    bill += price * amount
    end

    puts "\nTOTAL 💵: #{bill}€"
  else
    puts "🥲 Sorry, we don't have #{item} today."
  end
end

puts "\nThank you for shopping with Happy Shoppy 😍🛍!"


