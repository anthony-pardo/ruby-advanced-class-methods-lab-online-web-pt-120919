class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    new_song = Song.new()
    Song.all << new_song
    new_song
  end
  
  def self.new_by_name(name)
    new_song = Song.create
    new_song.name = name
    new_song
  end
  
  def self.create_by_name(name)
    new_song = Song.create
    new_song.name = name 
    new_song.save
    new_song
  end
  
  def self.find_by_name(name) 
    self.all.find()
  end


end
