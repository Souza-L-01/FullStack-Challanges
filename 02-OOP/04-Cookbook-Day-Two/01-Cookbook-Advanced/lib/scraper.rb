require "nokogiri"
require "open-uri"
require_relative "recipe"

class Scraper
  def initialize(search)
    @search = search
    # @view = View.new
  end

  def call
    new_recipes = []
    url = "https://www.allrecipes.com/search?q=#{@search}"
    doc = Nokogiri::HTML.parse(URI.open(url).read, nil, "utf-8")
      # Go through actual recipes and not blog articles - recipes are the cards with a rating

    doc.search(".mntl-card-list-items").each do |element|
        next if element.search(".recipe-card-meta__rating-count-number").empty?
        name = element.search('.card__title-text').text.strip
        rating = element.search(".icon.icon-star").count + (element.search(".icon.icon-star-half").count * 0.5)
        detail_url = element.attribute('href').value
        detail_doc = Nokogiri::HTML.parse(URI.open(detail_url).read, nil, "utf-8")
        description = detail_doc.search("p").first.text.strip
        prep_time = "no time provided"
        detail_doc.search(".mntl-recipe-details__item").each do |prep_details|
            if prep_details.search('.mntl-recipe-details__label:contains("Prep Time:")').any?
              prep_time = prep_details.search(".mntl-recipe-details__value").text.strip
            end
          end

        new_recipes << Recipe.new(name, description, prep_time, rating)
        end
        new_recipes.take(5)

    end 
    

end
