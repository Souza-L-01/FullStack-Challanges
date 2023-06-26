require 'csv'
require_relative '../models/employee.rb'

class EmployeeRepository
    def initialize(csv_file)
        @csv_file = csv_file
        @employees = []
        load_csv if File.exist?(csv_file)
    end

    def all_riders
        @employees.select do |employee|
            employee.rider?
        end
    end

    def find(id)
        @employee.find {|employee| employee.name == id}
    end

    def find_by_username(username) 
        @employees.find do |employee|
            employee.username == username
        end
    end

    private
    def load_csv
        CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
            row[:id] = row[:id].to_i
            @employees << Employee.new(row)
        end
    end
end