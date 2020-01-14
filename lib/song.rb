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
    new_song = Song.new()
  end

end
