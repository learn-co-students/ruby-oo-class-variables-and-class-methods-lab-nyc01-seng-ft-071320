class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_reader :name, :artist, :genre
    
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
        @@genres.each_with_object({}) do |element, hash|
            if !hash.key?(element)
                hash[element] = @@genres.count(element) 
            end
        end
    end 

    def self.artist_count 
        @@artists.each_with_object({}) do |element, hash|
            if !hash.key?(element)
                hash[element] = @@artists.count(element) 
            end
        end
    end
end