# Define the ruby constant
CALORIES_VALUES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  # I need to acess the calories of each choice
  CALORIES_VALUES[burger] + CALORIES_VALUES[side] + CALORIES_VALUES[beverage]
end
# p poor_calories_counter("Hamburger", "Lemonade", "Salad")
# # For this exercise, use Strings for your keys rather than Symbols, just for simplicity’s sake
# # Create a poor_calories_counter that returns the total number of calories for the three items of your order.
# # constraint: your method should make use of a hash (obviously!)
# # constraint: your method must use our given calorie values!
# # For example poor_calories_counter("Cheese Burger", "Sweet Potatoes", "Iced Tea") should return 600.
