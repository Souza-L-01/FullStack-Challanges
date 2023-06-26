require 'sqlite3'

def artist_count(db)
  query = <<~SQL
    SELECT COUNT(*) FROM artists
  SQL
  results = db.execute(query)
  results[0][0]
  # results.join.to_i
  # TODO: use `db` to execute an SQL query against the database.
end

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  query = <<~SQL
    SELECT COUNT(*) FROM #{table_name}
  SQL
  result = db.execute(query)
  result[0][0]
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  query = "SELECT name FROM artists ORDER BY name ASC"
  result = db.execute(query)
  artists = result.map { |row| row[0] }
  return artists
end

def love_tracks(db)
  # TODO: return array of love songs' names
  query = <<~SQL
    SELECT name FROM tracks WHERE name LIKE '%love%'
  SQL
  result = db.execute(query)
  result.flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks' names verifying: duration > min_length (mil) sorted by length (ascending)
  query = "SELECT name
  FROM tracks
  WHERE milliseconds > #{min_length * 60_000}
  ORDER BY milliseconds"
  results = db.execute(query)
  results.flatten
end

# def artist_count(db)
#   query = <<~SQL
#     SELECT artists.name, COUNT(tracks.id) as track_count
#     FROM artists
#     JOIN albums ON artists.id = albums.artist_id
#     JOIN tracks ON albums.id = tracks.album_id
#     WHERE artists.genre = 'Rock'
#     GROUP BY artists.id
#     ORDER BY track_count DESC
#     LIMIT 10;
#   SQL

#   result = db.execute(query)
#   return result
# end
