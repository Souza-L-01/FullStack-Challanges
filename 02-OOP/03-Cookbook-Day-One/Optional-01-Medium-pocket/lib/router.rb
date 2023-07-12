class Router
	def initialize(controller)
		@controller = controller
		@running = true
	end

	def run
		puts "---------------------------------"
		puts "Welcome to your DEV Pocket Reader"
		puts "---------------------------------\n\n"
		while @running
			print_menu
			action = gets.chomp.to_i
			print `clear`
			route(action)
		end
		puts "Bye!"
	end

	private

end