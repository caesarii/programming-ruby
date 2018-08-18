class Song
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end
    attr_reader :name, :artist, :duration
    attr_writer :duration
    def duration_in_minutes
        return @duration/60.0
    end
    def duration_in_minutes=(new_duration)
        @duration = (new_duration * 60).to_i()
    end
    def to_s
        return "Song: #@name--#@artist (#@duration)"
    end
end

song = Song.new('爱的劳工', '左小祖咒', 260)
id = song.inspect
puts(id)

str = song.to_s()
puts(str)

puts(song.artist)
puts(song.name)
puts(song.duration)

song.duration = 270
puts(song.duration)

puts(song.duration_in_minutes)
song.duration_in_minutes = 5
puts(song.duration_in_minutes)
