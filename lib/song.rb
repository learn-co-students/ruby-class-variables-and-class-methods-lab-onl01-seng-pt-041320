require 'pry'

class Song 
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
 #   binding.pry
#    @@artists.include?(artist) ?  false : @@artists << artist
    @@artists << artist
    @@genres << genre
    @@songs.include?(name) ?  false : @@songs << name
#    @@songs << name
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    @@artists.each do |name|
      unique_artists.include?(name) ?  false : unique_artists << name
    end
    unique_artists
  end
  
  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres.include?(genre) ?  false : unique_genres << genre
    end
    unique_genres
end

def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
      artist_count[artist] += 1 
    else
      artist_count[artist] = 1 
    end
  end
      artist_count
end
  
end