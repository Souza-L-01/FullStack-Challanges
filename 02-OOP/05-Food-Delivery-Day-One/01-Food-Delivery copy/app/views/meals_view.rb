class MealsView
    def display_all_meals(meals)
        meals.each do |meal|
            puts "Name: #{meal.name} -- Price: $#{meal.price}"
        end

    end

    def ask_for(word)
        puts "What is the #{word}?"
        print "> "
        return gets.chomp
    end

    # def ask_price
    #     puts "What is the price?"
    #     print "> "
    #     return gets.chomp
    # end

end