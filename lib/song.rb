require 'pry'
class Song
    attr_accessor :artist

    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end
    
    def self.all
        @@all
    end

    # def artist_name
    #     artist_name if artist
    # end

end
