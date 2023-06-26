# TODO: implement the router of your app.
class Router
   def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
    end

    def run
        puts "Welcome to Bistrô Bistrô"
        while @running
        display_tasks
        action = gets.chomp.to_i
        router_action(action)
        end
    end

    private
    def router_action(action)
        case action
        when 1 then @meals_controller.list
        when 2 then @meals_controller.add
        when 3 then stop
        else puts "Chose 1, 2 or 3"
        end
    end

    def stop
        @running = false
    end

    def display_tasks
        puts "###############################"
        puts "##      LE WAGON BISTRO.     ##"
        puts "###############################"
        puts "What do you want to do?"
        puts "1 - List all meals"
        puts "2 - Add a new meal"
        puts "3 - Stop"
        print ">"

    end
end