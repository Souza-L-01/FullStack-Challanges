class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :city, :average_rating

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @number_of_ratings = 0
    @sum_of_ratings = 0    # @average_rating = nil
  end
  # TODO: implement .filter_by_city and #rate methods
  def self.filter_by_city(restaurants, city)
    # restaurants.select {|restaurant| city == restaurant.city}
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end

  def rate(rating)
    @number_of_ratings += 1
    @sum_of_ratings += rating
    @average_rating = @sum_of_ratings.to_f / @number_of_ratings
  end
end

# jules_verne = Restaurant.new("paris", "Jules Verne")
bluebird = Restaurant.new("london", "Bluebird")
# daniel = Restaurant.new("new york", "Daniel")
# restaurants = [jules_verne, bluebird, daniel]
# Restaurant.filter_by_city(restaurants, "london")

# restaurant1 = Restaurant.new
p bluebird
p bluebird.rate(2)
p bluebird.rate(3)

p bluebird