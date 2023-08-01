require "open-uri"
require "nokogiri"

require_relative "../models/post"
require_relative "../models/author"

class ReaderScraper
  BASE_URL = "https://dev.to/".freeze

  def initialize(path)
    @path = path
  end
  

end