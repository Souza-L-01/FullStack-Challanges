class SessionsView
    def ask_for(stuff)
        puts "#{stuff}"
        print "> "
        gets.chomp
    end

    def login_sucessful
        puts "You're logged in"
    end

    def wrong_credentials
        puts "Sorry... try again"
    end

    def display_employees(employees)
        employees.each_with_index do |employee, index|
          puts "#{index + 1}. #{employee.username}"
        end
      end
    
      def ask_for(stuff)
        puts "What is the #{stuff}"
        print ">"
        gets.chomp
      end
end