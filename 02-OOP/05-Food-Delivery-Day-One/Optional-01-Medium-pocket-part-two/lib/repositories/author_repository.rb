require "csv"
require_relative "../models/author"

class AuthorRepository
  def initialize(csv_path)
    @authors = []
    @csv_path = csv_path
    @next_id = 1
    load_csv
  end

  def find(id)
    @authors.find { |author| author.id == id }
  end

  def add(author)
    author.id = @next_id
    @authors << author
    save
    @next_id += 1
    return author
  end

end
