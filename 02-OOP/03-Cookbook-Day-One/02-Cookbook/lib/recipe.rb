require_relative "cookbook"
class Recipe
    attr_accessor :name, :description

    def initialize(name, description)
        @name = name
        @description = description
    end
end

# store data in a CSV file