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
   song = self.new
    song.save
    song
  end
  def self.new_by_name(name)
    song=self.create
    song.name=name
    song
  end
  def self.create_by_name(name)
    song=self.create
    song.name=name
    song.save
    song
  end
  def self.find_by_name(name)
    song=self.all
    song.find do |songs|
      songs.name==name
    end
  end
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    
  end
  def self.alphabetical
    song=self.all
    @@all.sort do|song| 
    
  end
 end
 def self.new_from_filename(song,artist_name)
   @song=song
   @artist_name=artist_name
   
   
 end
   
    
end
