require 'pry'

class Song
    attr_accessor :artist, :genre
    attr_reader :name

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq.to_a
    end

    def self.genres
        @@genres.uniq.to_a
    end

    def self.genre_count
        hash = {}
        num = 0
        @@genres.each do |genre|
            if !(hash.include?(genre))
                num = 0
                hash[genre] = num += 1
            elsif hash.include?(genre)
                hash[genre] = num += 1
                # binding.pry
            end
        end
        hash.sort.to_h
    end

    def self.artist_count
        hash = {}
        num = 0
        @@artists.each do |artist|
            if !(hash.include?(artist))
                num = 0
                hash[artist] = num += 1
            elsif hash.include?(artist)
                hash[artist] = num += 1
                # binding.pry
            end
        end
        hash.sort.to_h
    end

end
