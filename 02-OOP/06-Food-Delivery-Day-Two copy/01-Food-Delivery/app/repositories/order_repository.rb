require "csv"
require_relative "../models/order.rb"

class OrderRepository
    def initialize(csv_file, meal_repository, customer_repository, employee_repository)
        @csv_file = csv_file
        @meal_repository = meal_repository
        @customer_repository = customer_repository
        @employee_repository = employee_repository
        @orders = []
        next_id = 1
    end
    def create_new(new_order)
        new_order.id = next_id
        @ordes << new_order
        next_id += 1
        save_csv
    end

    def undelivered
        @orders.reject do |order|
            order.delivered?
        end
        save_csv
    end

    def mark_delivered
        @orders.delivered!
        save_csv
    end
    
    private

    def save_csv
        CSV.open(@csv_file, "wb") do |csv|
            csv << %w[id delivered meal_id customer_id employee_id]
            @orders.each do |order|
                csv << [order.id, order.delivered?, order.meal.id, order.customer.id, order.employee.id]
            end
        end
    end

    def load_csv
        CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
            row[:id] = row[:id].to_i
            row[:meal] = @meal_repository.find(row[:meal_id].to_i)
            row[:customer] = @customer_repository.find(row[:customer_id].to_i)
            row[:employee] = @employee_repository.find(row[:employee_id].to_i)
            row[:delivered] = row[:delivered] == true
            @orders << Order.new(row)
        end
        next_id = orders.empty? ? 1 : @orders.last.id + 1
    end

    
end