require "json"
require "rest-client"

# Fetch the latest 100 post ids from the API
response = RestClient.get 'https://hacker-news.firebaseio.com/v0/topstories.json'
post_ids = JSON.parse(response)

# Fetch details for the first 10 post ids and save them to the database
puts "Creating 10 posts from Hacker News API..."
post_ids.first(10).each do |post_id|
  response = RestClient.get "https://hacker-news.firebaseio.com/v0/item/#{post_id}.json"
  post_data = JSON.parse(response)

  post = Post.new(
    title: post_data["title"],
    url: post_data["url"],
    votes: post_data["score"]
  )
  post.save!
end

puts "Finished!"
