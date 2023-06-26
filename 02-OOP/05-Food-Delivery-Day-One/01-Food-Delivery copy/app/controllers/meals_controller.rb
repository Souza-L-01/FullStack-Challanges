require_relative "../views/meals_view.rb"
# require_relative "app/repositories/meal_repository.rb"

class MealsController
    def initialize(meal_repository)
        @meal_repository = meal_repository
        @view = MealsView.new
    end

    def list
       @view.display_all_meals(@meal_repository.all)
    end

    def add
        # @view.ask_for(("name"), @view.ask_for("price").to_i)
        name = @view.ask_for("name")
        price = @view.ask_for("price")
        meal = Meal.new(name: name, price: price.to_i)
        @meal_repository.create(meal)
    end

end