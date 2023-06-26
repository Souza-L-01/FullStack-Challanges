require "csv"
require_relative "../models/meal.rb"

class MealRepository
    # attr_reader
    def initialize(csv_file_path)
        @csv_file_path = csv_file_path
        @meals    = []
        @next_id  = 1
        load_csv if File.exist?(csv_file_path)
    end

    def create(meal)
        meal.id = @next_id
        @meals << meal  
        @next_id += 1
        save_csv
    end

    def all
        @meals
    end

    def find(id)
        @meals.find do |meal|
             meal.id == id
        end 
    end

    private
    def load_csv
        CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
            # #<CSV::Row "name":"pasta">
            id    = row[:id].to_i
            name  = row[:name]
            price = row[:price].to_i
            # create meal instance
            meal = Meal.new(id: id, name: name, price: price)
            # push the instance in @meals
            @meals << meal
        end
        @next_id = @meals.last.id + 1 unless @meals.empty?
        # if @meals.empty?
        #     @next_id = 1
        #   else
        #     @next_id = @meals.last.id + 1
        #   end
    end
    def save_csv
        CSV.open(@csv_file_path, "wb") do |csv|
            csv << ["id", "name", "price"]
            @meals.each do |meal|
                csv << [meal.id, meal.name, meal.price]
            end
        end
    end
end