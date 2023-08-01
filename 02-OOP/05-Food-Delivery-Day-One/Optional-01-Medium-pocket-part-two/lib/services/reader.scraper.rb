require "open-uri"
require "nokogiri"

require_relative "../models/post"
require_relative "../models/author"

class ReaderScraper
  BASE_URL = "https://dev.to/".freeze

  def initialize(path)
    @path = path
  end

  def call
    post = scrape_post
    author = scrape_author
    return { post: post, author: author }
  end

end