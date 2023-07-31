require "csv"
require_relative "../models/post"

class PostRepository
  def initialize(csv_file, author_repo)
    @posts = []
    @csv_file = csv_file
    @author_repo = author_repo
    @next_id = 1
    load_csv
  end

  def all
    @posts
  end

  def add(post)
    post.id = @next_id
    @posts << post
    save
  end

  def find_by_index(index)
    @posts[index]
  end

  def mark_as_read(index)
    @posts[index].mark_as_read!
    save
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      post = Post.new(row)
      @posts << post
      author = @author_repo.find(row[:author_id].to_i)
      author.add_post(post)
    end
    @next_id = @posts.last.id + 1 unless @posts.empty?
  end

  def save
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "path", "title", "content", "author_id", "read"]
      @posts.each do |post|
        csv << [post.id, post.path, post.title, post.content, post.author.id, post.read?]
      end
    end
  end
end
