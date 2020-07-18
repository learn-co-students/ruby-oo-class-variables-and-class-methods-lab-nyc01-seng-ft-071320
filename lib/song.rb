require 'pry'
class Song 



  attr_accessor :artist , :genre , :name
  
   @@count= 0
   @@artists=[ ]
   @@genres = [ ]
   
    def initialize (name, artist, genre)
        @name= name
        @artist= artist
        @genre= genre
        @@count+=1
        @@artists << artist
        @@genres <<genre
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
        @@genres.inject(Hash.new(0)){|number, n| number[n]+= 1 ; number}
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)){|number, n| number[n]+= 1 ; number}
    end

    #you want to increase the @@count each time you make an instance of a the song 
    #class(which gets done because youre putting a class variable inside your initialize method), each time you make a new song that variable gets incremented once and stored away
    
    # def self.artists
    #     @@artists
    # end
    # def self.genres
    #     @@genres 
    # end 
    # def self.count
    #  @@count
    # end 


    #  def self.artist
    #     artist_all= Song.each{|name_artist| name_artist.artist==self}
    #     artists<< artist_all
    #  end
    #     @@artists.uniq
    #  end


    #  def self.genres
    #     genre_all= Song.each{|song_genre| song_genre.genre==self}
    #        genres << genre_all
    #     #end
  
    #    end
       

    
    

end 
