require_relative "../views/customers_view"
require_relative "../models/customer"

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customers_view = CustomersView.new
  end

  def add
    name = @customers_view.ask_for("name2")
    address = @customers_view.ask_for("address2")
    customer = Customer.new(name: name, address: address)
    @customer_repository.create(customer)
    list
  end

  def list
    display_customers
  end

  def destroy
    display_customers
    index = @customers_view.ask_for("Which custumer would you like to delete? (index)").to_i - 1
    customer.delete(index)
  end

  private

  def display_customers
    customers = @customer_repository.all
    @customers_view.display(customers)
  end
end