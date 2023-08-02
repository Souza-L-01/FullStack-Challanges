class Router
  def initialize(posts_controller, authors_controller)
    @posts_controller = posts_controller
    @authors_controller= authors_controller
    @running = true
  end

  def run
    puts "-------------------------"
    puts "Welcome to your DEV Pocket Reader"
    puts "-------------------------\n\n"
    while @running
      display_menu
      action = gets.chomp.to_i
      print 'clear'
      route(action)
    end
    puts "Goodbye!"
  end
  
  private

end