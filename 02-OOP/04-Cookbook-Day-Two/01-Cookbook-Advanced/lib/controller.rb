require_relative "router"
require_relative "recipe"
require_relative "view"
require_relative "scraper"
require "nokogiri"

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

    def import
        search = @view.ask_for("search")
        new_recipes = Scraper.new(search).call
        @view.display_list(new_recipes)
        index = @view.ask_index
        @cookbook.create(new_recipes[index])
        list
    end

    def mark_as_done
        list
        index = @view.ask_index
        @cookbook.mark_as_done_recipe(index)
        list
    end

    
end
