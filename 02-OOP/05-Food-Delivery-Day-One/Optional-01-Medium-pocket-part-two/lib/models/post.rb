class Post
attr_reader :title, :path, :content
attr_accessor :id, :author

  def initialize(attributes = {})
    @id = attributes[:id].to_i
    @path = attributes[:path]
    @title = attributes[:title]
    @content = attributes[:content]
    @author = attributes[:author]
    @read = attributes[:read] == "true"
  end

  def read?
    @read
  end

  def to_s
    "#{title}\n\n#{author}\n\n#{content}"
  end

  def mark_as_read!
    @read = true
  end
end
