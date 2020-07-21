class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}

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
        genre_newhash = {}
        self.genres.each do |my_genre|
            genre_newhash[my_genre] = @@genres.select {|genre| genre == my_genre}.count
        end
    genre_newhash
    end

    def self.artist_count
        artist_newhash = {}
        self.artists.each do |my_artist|
            artist_newhash[my_artist] = @@artists.select {|artist| artist == my_artist}.count
        end
    artist_newhash
    end
   
end