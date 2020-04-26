require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0 # keeps track of new songs
  @@genres = [] # keeps track of unique genres
  @@artists = [] # keeps track of artists
  
  # initializes a new song with song_name, artist, and genre. Also increments @@count for total number of songs
  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  # counts the number of all songs made by class
  def self.count
    @@count
  end
  
  # returns an array of all artists of existing songs. only contain unique artists-no duplicates
  def self.artists
    artist_array = []
    
    @@artists.each do |artist|
      if artist_array.include?(artist) == false
        artist_array << artist
      end
    end
    artist_array
  end
  
  # returns an array of all genres of existing songs. only contain unique genres-no duplicates.
  def self.genres
    genre_array = []
    
    @@genres.each do |genre|
      if genre_array.include?(genre) == false
        genre_array << genre
      end
    end
    genre_array
  end
  
  # returns a hash in which the keys are the names of each genre. Each genre name key should point to a value that is the number of songs that have that genre.
  def self.genre_count
    genre_hash = {}
    
    @@genres.each do |genre|
      if genre_hash.include?(genre) == false
        # if key is in the hash, increment
        genre_hash[genre] = 1
        #binding.pry
      else
        # if key is not in the hash, add to hash with value of 1
        genre_hash[genre] += 1
        #binding.pry
      end
    end
    genre_hash
  end
  
  # returns a hash in which the keys are the names of each artist. Each artist name key should point to a value that is the number of songs that have that artist.
  def self.artist_count
    artist_hash = {}
    
     @@artists.each do |artist|
      if artist_hash.include?(artist) == false
        # if key is not in the hash, add to hash with value of 1
        artist_hash[artist] = 1
        #binding.pry
      else
        # if key is in the hash, increment
        artist_hash[artist] += 1
        #binding.pry
      end
    end
    artist_hash
  end
end