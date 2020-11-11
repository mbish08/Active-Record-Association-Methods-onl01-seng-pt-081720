class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name 
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    if Artist.name == "Drake"
      new_song = Song.create
      drake.self.push(new_song)
    else 
      drake = Artist.new(name: "Drake")
      new_song = Song.create
      drake.self.push(new_song)
    end 
  end
end