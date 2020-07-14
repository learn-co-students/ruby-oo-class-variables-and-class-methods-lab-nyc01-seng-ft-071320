class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def genre
        @genre
    end

    def artist
        @artist
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
       artist_total = @@artists.each_with_object(Hash.new(0)) do |artist, new_hash|
        new_hash[artist] += 1
       end
    end
    def self.genre_count
        artist_total = @@genres.each_with_object(Hash.new(0)) do |genre, new_hash|
         new_hash[genre] += 1
        end
     end
end







