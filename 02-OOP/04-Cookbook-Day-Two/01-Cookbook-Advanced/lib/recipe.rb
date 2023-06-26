require_relative "cookbook"
class Recipe
    attr_accessor :name, :description, :prep_time, :rating

    def initialize(name, description, rating, prep_time)
        @name = name
        @description = description
        @rating = rating
        @prep_time = prep_time
        @done = false
    end
    def done?
        @done
    end
    def mark_as_done!
        @done = true
    end

end

# store data in a CSV file