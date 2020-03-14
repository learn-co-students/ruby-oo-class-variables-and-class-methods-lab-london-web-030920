class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
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
        new_hash = {}
        @@genres.each do |genre|
        if new_hash[genre] 
            new_hash[genre] += 1
        else new_hash[genre] = 1
     end
    end
    new_hash
    end 
    
    def self.artist_count
        new_artist_hash = {}
        @@artists.each do |artist|
        if new_artist_hash[artist] 
            new_artist_hash[artist] += 1
        else new_artist_hash[artist] = 1
     end
    end
    new_artist_hash
    end 

end

consideration = Song.new("consideration", "Rihanna", "pop")
drip_too_hard = Song.new("drip too hard", "lil baby", "rap")



