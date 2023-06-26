    require "csv"
    require_relative "recipe"
    class Cookbook
        def initialize(csv_file_path)
            @csv_file_path = csv_file_path
            @recipes = []
            load_csv
        end
        def all
            @recipes
        end
        def create(recipe)
            @recipes << recipe
            save_to_csv
        end

        def destroy(index)
            @recipes.delete_at(index)
            save_to_csv
          end

        def mark_as_done_recipe(index)
            recipe = @recipes[index]
            recipe.mark_as_done!
            save_to_csv
            
            
        end

        private

        def save_to_csv
            CSV.open(@csv_file_path, 'wb') do |csv|
                @recipes.each do |recipe|
                    csv << [ recipe.name, recipe.description ]
                end
            end
        end

        def load_csv
            CSV.foreach(@csv_file_path) do |row|
                @recipes << Recipe.new(row[0],row[1],row[2],row[4])
            end
        end
    end