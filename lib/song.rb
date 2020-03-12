require 'pry'
class Song

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(song, artist, genre)
        @song = song
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def name
      @song
    end

    def artist
        @artist
    end

    def genre
        @genre
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
        @@genres.group_by(&:itself).transform_values(&:count)
    end

    def self.artist_count
        @@artists.group_by(&:itself).transform_values(&:count)
    end

end