require 'pry'

class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
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
    @@genres.inject(Hash.new(0)) do |hash, ele|
      hash[ele] += 1
      hash
    end
  end
  def self.artist_count 
    @@artists.inject(Hash.new(0)) do |hash, ele| 
    hash[ele] += 1
    hash
    end
  end

end
