require_relative "router"
require_relative "recipe"
require_relative "view"
class Controller

    def initialize(cookbook) #view is required)
        @cookbook = cookbook
        @view = View.new
    end
    def list
        @view.display_list(@cookbook.all)
    end
    def add
        @cookbook.create(Recipe.new(@view.ask_for("name"), @view.ask_for("description")))
        # recipe = @cookbook
    end
    def remove
        list
        # index = @view.ask_for("index").to_i - 1
        @cookbook.destroy(@view.ask_for("index").to_i - 1)
        list
    end
    
end
