class Song

    attr_accessor :name, :genre, :artist

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << self.genre
        @@artists << self.artist
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
        counting_hash = {}
        @@genres.each do |genres|
            if counting_hash.keys.include?(genres)
                counting_hash[genres] =counting_hash[genres] + 1
            else
                counting_hash[genres] = 1
            end
        end
        counting_hash
    end

    def self.artist_count
        counting_hash = {}
        @@artists.each do |artist|
            if counting_hash.keys.include?(artist)
                counting_hash[artist] =counting_hash[artist] + 1
            else
                counting_hash[artist] = 1
            end
        end
        counting_hash
    end



end
