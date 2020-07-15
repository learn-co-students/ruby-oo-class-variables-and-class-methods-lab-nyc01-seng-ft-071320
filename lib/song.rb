class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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
        genre_hash = {}
        self.genres.each do |genre|
            genre_hash[genre] = @@genres.count {|element| element == genre}
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        self.artists.each do |artist|
            artist_hash[artist] = @@artists.count {|element| element == artist}
        end
        artist_hash
    end
end