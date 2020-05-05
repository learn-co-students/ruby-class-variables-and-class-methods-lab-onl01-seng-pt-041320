require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre

    end
    
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
     end

     def self.genre_count
        result_genre = {}
        @@genres.each do |genre|
            if result_genre[genre]
                result_genre[genre] += 1
            else
                result_genre[genre] = 1
            end
            # binding.pry
        end
        result_genre
     end

     def self.artist_count
        result_artist = {}
        @@artists.each do |artist|
            if result_artist[artist]
                result_artist[artist] += 1
            else
                result_artist[artist] = 1
            end
            # binding.pry
        end
        result_artist

     end

end