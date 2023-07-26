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

  def find_by_nickname(nickname)
    @authors.find { |author| author.nickname == nickname }
  end

  def find_by_index(index)
    @authors[index]
  end

  def all
    @authors
  end

  private

  def load_csv
    CSV.foreach(@csv_path, headers: :first_row, header_converters: :symbol) do |row|
      @authors << Author.new(row)
    end
    @next_id = @authors.last.id + 1 unless @authors.empty?
  end

  def save
    CSV.open(@csv_path, 'wb') do |csv|
      csv << ["id", "name", "description", "posts_published", "comments_written", "nickname"]
      @authors.each do |author|
        csv << [author.id, author.name, author.description,
                author.posts_published, author.comments_written, author.nickname]
      end
    end
  end
end
