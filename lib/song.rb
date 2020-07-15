class Song
    @@count=0
    @@artists=[]
    @@genres=[]

    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@artists<<artist
        @@genres<<genre
        @@count+=1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        unique_genres=@@genres.uniq
        # genre_hasher={}
        # unique_genres.each do |type|
        #     genre_hasher[type]=@@genres.count(type)
        # end
        # genre_hasher
    end

    def self.genre_count
        unique_genres=@@genres.uniq
        genre_hasher={}
        unique_genres.each do |type|
            genre_hasher[type]=@@genres.count(type)
        end
        genre_hasher
    end

    def self.artist_count
        unique_artists=@@artists.uniq
        artist_haster={}
        unique_artists.each do |whom|
            artist_haster[whom]=@@artists.count(whom)
        end
        artist_haster
    end

end