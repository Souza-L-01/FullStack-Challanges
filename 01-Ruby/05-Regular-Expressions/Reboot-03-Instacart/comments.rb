# # PSEUDO CODE
# # 1. Welcome message
# # 2. Display the items (item, price) *

# # LOOP STARTS
#   # 'quit' to stop the loop
#   # 3. Ask user to order the item
#   # 4. Get the answer
#   # 5. Calculate
# # LOOP ENDS

# # 6. Display the total

# # Define the products and their prices
# products = {
#     "kiwi" => 1.25,
#     "banana" => 0.5,
#     "mango" => 4,
#     "asparagus" => 9
#   }
  
#   # Initialize the total price
#   total = 0
  
#   # Welcome message
#   puts "Welcome to Instacart!"
  
#   # Loop starts
#   loop do
#     # Display the items
#     puts "Here are the available items:"
#     products.each { |item, price| puts "#{item}: $#{price}" }
  
#     # Ask user to order the item
#     puts "Enter an item to add to your cart (or 'quit' to checkout):"
#     item = gets.chomp.downcase
  
#     # Check if the user wants to quit
#     break if item == "quit"
  
#     # Check if the entered item is valid
#     if products.key?(item)
#       # Add the price to the total
#       total += products[item]
#       puts "#{item.capitalize} has been added to your cart (total: $#{total})"
#     else
#       puts "Sorry, we don't have #{item} in stock."
#     end
#   end
  
#   # Display the total price
#   puts "Your total is: $#{total}"
  

