require 'csv'
file_path = 'lib/movies.csv'

def load_movies(file_path, max_year)
  movies = []

  CSV.foreach(file_path) do |row|
    year = row[1].to_i
    next if year >= max_year

    movies << { name: row[0], year: year, earnings: row[2].to_i }
  end
  p movies
end


