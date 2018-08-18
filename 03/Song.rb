class Song
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end
    def name
        return @name
    end
    def artist
        return @artist
    end
    def duration
        return @duration
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