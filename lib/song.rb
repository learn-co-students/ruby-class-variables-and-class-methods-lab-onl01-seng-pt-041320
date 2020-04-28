class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@count = 0
  @@genres = []
  @@artist_count = {}
  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @@genres << genre
    @@artists << artist
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
    #filter out duplicates
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    #return a hash with key/value pairs of genre:count
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
    #return a hash with key/value pairs of genre:count    
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
end

