require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist 
    @genre = genre
    @@genres << genre
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
    hash = {}
    @@genres.each do |genre|
      if hash.key?(genre) == true 
        hash[genre] += 1      
      else
        hash[genre] = 1 
      end
    end
    hash 
 end 
 
 def self.artist_count
   hash = {}
   @@artists.each do |artist|
     if hash.key?(artist) == true
       hash[artist] += 1 
     else 
       hash[artist] = 1 
     end
   end
   hash
 end 
 
end





  
  
