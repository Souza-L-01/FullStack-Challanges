class OrderView
    def display(orders)
      orders.each_with_index do |order, index|
        puts "#{index + 1}. #{order.meal.name} to customer #{order.customer.name} delivered by #{order.employee.username}"
      end
    end
  
    def ask_for(question)
      puts question
      print ">"
      gets.chomp
    end
  
  end