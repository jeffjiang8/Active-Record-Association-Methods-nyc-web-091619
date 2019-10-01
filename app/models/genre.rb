class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    Song.count
    # self.songs.length
  end

  def artist_count
    # return the number of artists associated with the genre
    Artist.count
    # self.artists.length
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    Artist.all.map do |artist|
      artist.name
    end
    # self.artists.map(&:name)
  end
end
