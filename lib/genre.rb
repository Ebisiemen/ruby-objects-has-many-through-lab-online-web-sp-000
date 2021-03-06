require 'pry'

class Genre 

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name 
        @@all << self 
    end     

    def self.all 
        @@all 
    end 
    
    def songs 
      Song.all {|song| song.genre.name == self}
    #   binding.pry 
    end     

    def artists 
      songs.map {|song| song.artist}
    end     
end     