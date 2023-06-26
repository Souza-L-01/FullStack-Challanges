DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

MEALS = {
  "Cheesy Combo" => ["Cheese Burger", "Sweet Potatoes", "Lemonade"],
  "Veggie Combo" =>	["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan Combo" => ["Vegan Burger", "Salad", "Lemonade"]
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end
# puts poor_calories_counter( "Hamburger", "Salad", "Lemonade" ).to_i

def calories_counter(meals)
  # TODO: return number of calories for a less constrained order
  # initialize the value total
  sum = 0
  meals.each do |meal|
    if DISHES_CALORIES.key?(meal)
      # If the order is not a meal, assume it's a dish and I need to sum this condition
      #  total_calories += poor_calories_counter
      sum += DISHES_CALORIES[meal]
      # puts "#{order} is #{DISHES_CALORIES[order]}"
    else
      # Get the items that make up the meal
      # Calculate calories for the meal items
      sum += poor_calories_counter(MEALS[meal][0], MEALS[meal][1], MEALS[meal][2])
    end
  end
  sum
end
# p calories_counter(["Vegan Combo", "Iced Tea"])
# p poor_calories_counter("Hamburger", "Iced Tea", "Iced Tea")
# You may want to store these meals in another constant. Note: don’t try to pre-compute the calories for each meal,
# just store the dishes that make up the meal. How do you think you could represent the dishes in each meal?
# Let’s now create a complete #calories_counter that will enable us to calculate calories by running:
