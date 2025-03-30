class Song

  attr_writer :title, :artist, :lyrics, :duration
  attr_reader :title, :artist, :lyrics, :favorite, :duration

  def initialize(title, artist, lyrics, duration)
    @title = title
    @artist = artist
    @lyrics = lyrics
    @favorite = false
    @duration = duration
  end

  def toggle_favorite
    @favorite = !@favorite
  end


  def readable_duration
    minutes = @duration / 60
    seconds = @duration % 60
    "#{minutes} minutes, and #{seconds} seconds"
  end

end


tracks = [
  Song.new("Drunken Lullabies", "Flogging Molly", "Must it take a life...", 120),
  Song.new("Enter Sandman", "Metallica", "Say your prayers little one", 240),
  Song.new("O'Malley's Bar", "Nick Cave and the Bad Seeds", "I am tall and I am thin", 1000)
]


class PlayList

  attr_reader :title, :tracks
  attr_writer :title

  def initialize(title, tracks)
    @title = title 
    @tracks = tracks
  end

  def add_song(new_song)
    @tracks.push(new_song)
  end

  def shuffle
    @tracks.shuffle
  end
  
  def list_duration
    listening_time = 0
    @tracks.each { |track| listening_time += track.duration }
    return listening_time
  end

  def list_readable_duration
    minutes = list_duration / 60
    seconds = list_duration % 60
    return "#{minutes} minutes and #{seconds} seconds"
  end

end

list = PlayList.new("My awesome songs", tracks)

p list.list_readable_duration
