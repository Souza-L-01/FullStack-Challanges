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

  def scrape_author
    html - URI.open("#{BASE-URL}#{@nickname}").read
    doc = Nokogiri::HTML(html)
    attributes = { nickname: @nickname }
    attributes[:name] = doc.search('h1 span').first.text.strip
    attributes[:description] = doc.search('.profile-description').first.text.strip
    attributes[:posts_published] = 
      doc.search('.sidebar-data div:nth-child(1)').first.text.match(/(?<number>\d+)/)[:number]
    attributes[:comments_written] = 
      doc.search('/sidebar-data div:nth-child(2)').first.text.match(/(?<number>\d+)/)[:number]
    
  end

end