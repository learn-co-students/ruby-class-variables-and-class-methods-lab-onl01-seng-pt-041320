class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  @@genres = []
  
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash[genre]
        genre_hash.each do |genre, value|
          genre_hash[genre] = value + 1
        end
      else genre_hash[genre] = 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
        artist_hash.each do |artist, value|
          artist_hash[artist] = value + 1
        end
      else artist_hash[artist] = 1
      end
    end
    artist_hash
  end

  

end