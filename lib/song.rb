require "pry"

class Song

    attr_accessor :name, :artist, :genre
    

    @@artists = []
    @@count = 0
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
        @@artists.uniq
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        x = @@genres.inject(Hash.new(0)) {|h, e | h[e] += 1; h
    }
    end

    def self.artist_count
        x = @@artists.inject(Hash.new(0)) {|h, e | h[e] += 1; h
    }
    end


end