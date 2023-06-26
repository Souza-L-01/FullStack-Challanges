class Post
  attr_reader :id
  attr_accessor :title, :url
  def initialize(attr={})
    @id = attr[:id]
    @title = attr[:title]
    @url = attr[:url]
    @votes = attr[:votes]
    # DB.results_as_hash = true
  end
  def self.find(id)
    data_find = DB.execute("SELECT * FROM posts WHERE id == ?", id).flatten!
    if data_find.nil?
      nil
    else
    post = Post.new({id: data_find[0], title: data_find[1], url: data_find[2], votes: data_find[3]})
    end
  end
  def self.all
    data_all = DB.execute("SELECT * FROM posts")
   data_all.map do |row| 
    Post.new(id: row[0], title: row[1], url: row[2], votes: row[3])
      end
    end
end


new_result = Post.new(id: 1, title: 2 url: 2, votes: 1)
p new_result.find(1)