require 'pry'
class Artist
attr_accessor :name

@@all = []
def initialize(artist_name)
  @name= artist_name
  @@all << self

end 

def self.all
  @@all 
end 

def songs
  Song.all.select {|song| song.artist == self}

end 

def add_song(song)
  song.artist = self
end 

def add_song_by_name(song_name)
song = Song.new(song_name)
song.artist = self 
end 

def self.song_count
  Song.all.count
end 

end 