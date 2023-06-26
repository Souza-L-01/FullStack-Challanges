require_relative "cookbook"

class View 
    def display_list(recipes)
        recipes.each_with_index do |recipe, i|
            status = recipe.done? ? "[x]" : "[ ]"
            puts "#{i + 1} #{status} - #{recipe.name} = #{recipe.description} | #{recipe.prep_time} | #{recipe.rating}"
        end
    end

    def ask_for(word)
        puts "What is the #{word} of the recipe?"
        print "> "
        return gets.chomp
    end

    def ask_index
        puts "Index?"
        print "> "
        gets.chomp.to_i - 1
    end
end