require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @genre = genre
        @@genres << genre
        @artist = artist
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
          genres_hash = Hash.new
          @@genres.each do |genre|
         genres_hash[genre] = @@genres.count(genre)
         end
         genres_hash
     end


#     def self.genre_count
#      genres_hash = Hash.new
#      @@genres.each do |genre|
#         binding.pry
#     if genres_hash[genre]
#       genres_hash[genre] += 1
#     else
#      genres_hash[genre] = 1
#      end
#     end
#     genres_hash
# end



def self.artist_count
     artist_hash = Hash.new
     @@artists.each do |artist|
          if artist_hash[artist]
               artist_hash[artist] += 1
          else
               artist_hash[artist] = 1
          end
     end
     artist_hash
end
end