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

  private

  def scrape_post
    html = URI.open("#{BASE_URL}#{@path}").read
    doc = Nokogiri::HTML(html)
    title = doc.search("h1").first.text.strip
    paragraphs = doc.search("#article-body p")
    content = paragraphs.map(&:text).join("\n\n")
    @nickname = doc.search(".crayons-article__subheader a"). attribute("href").value.delete_prefix!("/")
    return Post.new(path: path, title: title, content: content)
  end


end