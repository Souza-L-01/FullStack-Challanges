require 'sqlite3'
def all_artists(db)
  db.execute("SELECT * FROM artists")
end