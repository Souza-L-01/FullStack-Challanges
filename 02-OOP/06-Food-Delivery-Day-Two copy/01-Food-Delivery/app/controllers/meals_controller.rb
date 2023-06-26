require_relative "../views/meals_view"
require_relative "../models/meal"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def add
    name = @meals_view.ask_for("What's the name of the meal?")
    price = @meals_view.ask_for("What's the price of the meal?").to_i
    new_meal = Meal.new(name: name, price: price)
    @meal_repository.create(new_meal)
    list
  end

  def destroy
    #delete what from where? index from meal_repo 
    list
    index = @meals_view.ask_for("Whats the meal you want to delete?").to_i - 1
    @meal_repository.delete(index)
    list
  end

  def edit
    list
    index = @meals_view.ask_for("Whats the meal you want to edit?").to_i - 1
    new_name = @meals_view.ask_for("New name:")
    new_price = @meals_view.ask_for("New price:").to_i
    new_edit = {index: index, name: name, price: price}
    @meal_repository.change(new_edit)
    price
  end

  def list
    display_meals
  end

  private

  def display_meals
    meals = @meal_repository.all
    @meals_view.display(meals)
  end
end