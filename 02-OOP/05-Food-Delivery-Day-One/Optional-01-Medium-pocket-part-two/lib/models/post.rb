class Post

  def initialize(attributes = {})
    @id = attributes[:id].to_i
    @path = attributes[:path]
    @title = attributes[:title]
    @content = attributes[:content]
    @author = attributes[:author]
    @read = attributes[:read] == "true"
  end

end
