require "pry"

class Song

 @@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)

    @@name = name
    @@artist = artist
    @@genre = genre

@@count += 1
@@artists << self.artist
@@genres << self.genre

end


def self.count
    @@count
end

def name
    @@name
end

def artist
    @@artist
end

def genre
    @@genre
end

def self.artists
@@artists = @@artists.uniq
end

def self.genres
@@genres = @@genres.uniq
end

def self.genre_count

    x = @@genres.inject(Hash.new(0)) { 
        |h, e| h[e] += 1 ; h 
    }

end

def self.artist_count
    x = @@artists.inject(Hash.new(0)) { 
        |h, e| h[e] += 1 ; h 
    }

end

end