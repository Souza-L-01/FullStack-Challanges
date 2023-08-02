# rubocop:disable Metrics/MethodLength
class Router
  def initialize(posts_controller, authors_controller)
    @posts_controller = posts_controller
    @authors_controller = authors_controller
    @running = true
  end

 end
# rubocop:enable Metrics/MethodLength
