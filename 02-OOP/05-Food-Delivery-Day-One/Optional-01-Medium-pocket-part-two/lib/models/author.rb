class Author
  attr_accessor :id
  attr_reader :name, :description, :posts_published, :comments_written, :nickname, :posts

  def initialize(attributes = {})
    @id = attributes[:id].to_i
    @name = attributes[:name]
    @nickname = attributes[:nickname]
    @description = attributes[:description]
    @posts_published = attributes[:posts_published]
    @comments_written = attributes[:comments_written]
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def unread_posts
    @posts.reject(&:read?)
  end

  def to_s
    "#{@name} (#{@nickname})\n\n#{@description}\n\n#{engagement}"
  end

  private

  def engagement
    posts_published_pluralized = @posts_published == 1 ? "post published" : "posts published"
    comments_written_pluralized = @comments_written == 1 ? "comment written" : "comments written"
    "#{@posts_published} #{posts_published_pluralized} - #{@comments_written} #{comments_written_pluralized}"
  end
end
