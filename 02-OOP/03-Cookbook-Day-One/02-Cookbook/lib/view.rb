require_relative "cookbook"

class View 
    def display_list(recipes)
        # what do I want it to do?
        recipes.each_with_index do |recipe, i|
            puts "#{i + 1} - #{recipe.name}, #{recipe.description}"
        end
    end

    def ask_for(word)
        puts "What is the #{word} of the recipe?"
        return gets.chomp
    end
end