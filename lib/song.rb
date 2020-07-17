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

    def self.genres
        @@genres.uniq 
    end 

    def self.artists 
        @@artists.uniq
    end 

    def self.genre_count
        @@genres.each_with_object({}) do |genre, hash|
            if hash[genre]
                hash[genre] += 1 
            else
                hash[genre] = 1 
            end
        end
    end
            
    def self.artist_count
        @@artists.each_with_object(Hash.new) do |art, hash|
            if hash[art]
                hash[art] += 1
            else
                hash[art] = 1 
            end 
        end
    end     




end 