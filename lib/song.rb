class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@genres << genre
        @@artists << artist

        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genre_count
        new_hash = {}
        @@genres.each_with_index do |key|
            if new_hash[key]
                new_hash[key] += 1
            else
                new_hash[key] = 1
            end
        end
        return new_hash
    end

    def self.artist_count
        new_hash = {}
        @@artists.each_with_index do |key|
            if new_hash[key]
                new_hash[key] += 1
            else
                new_hash[key] = 1
            end
        end
        return new_hash
    end

end