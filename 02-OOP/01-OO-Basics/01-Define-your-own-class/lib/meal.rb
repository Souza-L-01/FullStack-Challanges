class Meal
  def initialize(dish, drink)
    @dish = dish
    @drink = drink
  end

  attr_reader :dish, :drink
end
