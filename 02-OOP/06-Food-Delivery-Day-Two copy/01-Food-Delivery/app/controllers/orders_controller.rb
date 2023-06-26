require_relative "../views/meals_view.rb"
require_relative "../views/customers_view.rb"
require_relative "../views/sessions_view.rb"
require_relative "../views/orders_view.rb"
require_relative "../models/order.rb"


class OrdersController
    def initialize(meal_repository, customer_repository, employee_repository, order_repository)
        @meal_repository = meal_repository
        @customer_repository = customer_repository
        @employee_repository = employee_repository
        @order_repository = order_repository
        @meals_view = MealsView.new
        @customers_view = CustomersView.new
        @sessions_view = SessionsView.new
        @orders_view = OrderView.new
    end

    def add
        question1 = orders_view.ask_for("Whats the meal")
        meals = @meal_repository.all
        @meals_view.display(meals)
        question2 = orders_view.ask_for("Whats the customer")
        orders = @order_repository.all
        @order_view.display(orders)
        question3 = orders_view.ask_for("Whats the employee")
        sessions = @session_repository.all
        @session_view.display(sessions)
        list

        new_order = Order.new(meal: meals[question1[0]])
    end

    def list
        display_orders
    end
    
    private
    
    def display_meals
        orders = @order_repository.all
        @orders_view.display(orders)
    end
    
    # def list_my_orders(rider)
    #     orders = @order_repository.undelivered_orders
    #     my_undelivered_orders = orders.select do |order|
    #       order.employee.id == rider.id
    #     end
    #     @order_view.display_orders(my_undelivered_orders)
    #     my_undelivered_orders
    # end
    
    # def list_undelivered_orders
    #     @order_view.display_orders(@order_repository.undelivered_orders)
    # end
    
    # def select_employee
    #     employees = @employee_repository.all_riders
    #     @sessions_view.display_employees(employees)
    #     user_index = @sessions_view.ask_for("index").to_i
    #     # employees[user_index - 1]
    # end
    
    # def select_customer
    #     customers = @customer_repository.all
    #     @customers_view.display_customers(customers)
    #     user_index = @customers_view.ask_for("index").to_i
    #     customers[user_index - 1]
    # end
    
    # def select_meal
    #     # fetch all meals from repo
    #     meals = @meal_repository.all
    #     # display all the meals
    #     @meals_view.display_meals(meals)
    #     # ask which one he/she wants
    #     user_index = @meals_view.ask_for("index").to_i
    #     # fetch the right meal from meals array
    #     meals[user_index - 1]
    # end

    # def add
    #     # ask the user which meal for order
    #     meal = select_meal
    #     # ask the user which customer for the order
    #     customer = select_customer
    #     # ask the user which employee for the order
    #     employee = select_employee
    #     #create new order
    #     new_order = Order.new(meal: meal, customer: customer, employee: employee)
    #     # repo save the order
    #     @order_repository.create(new_order)
    #     #display all orders
    #     list_underlivered_orders
    # end

    # def mark_as_delivered(rider)
    #     #list all my orders
    #     order = list_my_orders(rider)
    #     #ask for each one to mark
    #     @orders_view.display_orders(order)
    #     #fetch the right one
    #     user_index = orders_view.ask_for("index").to_i
    #     #mark as delivered
    #     order = order[user_index - 1]
    #     @order_repository.mark_delivered(order)
    # end

end