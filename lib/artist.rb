require 'pry'
class Artist
    attr_accessor :name

    def initialize(name)
        @name=name
        
    end

    def songs
        Song.all.select do |song|
            self == song.artist
        end 
        #Song class give me all of your songs
        #does this song belong to this artist?
        #if it does put in array and return it
    end
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
end
