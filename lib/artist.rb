class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
  end
  def add_song(song)
    @songs << song
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|x| x.name == name}
      @@all.select {|x| x.name == name}
    else
      artist = Artist.new(name)
      @@all << artist
      artist
    end
  end

  def print_songs
    @songs.map {|x| puts x.name}
  end

end
