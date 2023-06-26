class MealsView
    def display(meals)
      meals.each_with_index do |meal, index|
        puts "#{index + 1}. #{meal.name} : #{meal.price}€"
      end
    end
  
    def ask_for(question)
      puts question
      print "> "
      return gets.chomp
    end
  end