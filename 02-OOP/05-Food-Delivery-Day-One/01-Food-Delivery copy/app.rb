# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
# TODO: require relevant files to bootstrap the app.

require "csv"
require "pry-byebug"
require_relative "app/controllers/meals_controller.rb"
#require relatives  repo, controller
require_relative 'router'
require_relative 'app/repositories/meal_repository.rb'
#initiate csv, repo, router
csv_file_path = File.join(__dir__, "data/meals.csv")
meal_repository = MealRepository.new(csv_file_path)

controller = MealsController.new(meal_repository)
router = Router.new(controller)
#run router
router.run












# require 'csv'
# require 'pry-byebug'
# # router
# require_relative 'router'
# # models
# require_relative 'app/models/meal'
# # require_relative 'app/models/customer'
# # repositories
# require_relative 'app/repositories/meal_repository'
# # require_relative 'app/repositories/customer_repository'
# # controllers
# # require_relative 'app/controllers/meals_controller'
# # require_relative 'app/controllers/customers_controller'
# csv_file_path = File.join(__dir__, 'data/meals.csv')
# # customers_csv = 'data/customers.csv'
# meal_repository = MealRepository.new(csv_file_path)
# # customer_repository = CustomerRepository.new(csv_file_path)
# # meals_controller = MealsController.new(meal_repository)
# # customers_controller = CustomersController.new(customer_repository)

# # controllers = {
# #   meals_controller: meals_controller,
# #   customers_controller: customers_controller
# # }

# router = Router.new(controllers)
# # start app
# router.run




