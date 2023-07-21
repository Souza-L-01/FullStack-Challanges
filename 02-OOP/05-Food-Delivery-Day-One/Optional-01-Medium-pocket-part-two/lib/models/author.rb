class Author
    def initialize(attributes = {})
    @id = attributes[:id].to_i
    @name = attributes[:name]
    @nickname = attributes[:nickname]
    @description = attributes[:description]
    @posts_published = attributes[:posts_published]
    @comments_written = attributes[:comments_written]
    @posts = []
  end

  
end
