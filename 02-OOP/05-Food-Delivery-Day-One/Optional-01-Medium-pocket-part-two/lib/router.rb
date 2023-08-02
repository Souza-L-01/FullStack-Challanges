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

  def print_menu
    puts "-------------------------"
    puts "What do you want to do next?"
    puts "-------------------------"
    puts "1. List posts"
    puts "2. Save post for later"
    puts "3. Read post"
    puts "4. Mark post as read"
    puts "5. List authors"
    puts "6. List author's posts"
    puts "7. See auhtor info"
    puts "8. Exit"
  end

  def route(action)
    case action
    when 1 then @posts_controller.index
    when 2 then @posts_controller.create
    when 3 then @posts_controller.show
    when 4 then @posts_controller.mark_as_read
    when 5 then @authors_controller.index
    when 6 then @authors_controller.posts
    when 7 then @authors_controller.show
    when 8 then @running = false
    else
      puts "Please, try again"
    end
  end
end