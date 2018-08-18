class Song
    @@plays = 0
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
        @plays = 0
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
    def play
        @plays += 1
        @@plays += 1
        return "This song: #@plays plays. Total #@@plays plays"
    end
end
class SongList
    MAX_TIME = 5 * 60
    def SongList.is_too_long(song)
        return song.duration > MAX_TIME
    end
end

s1 = Song.new('李志', '杭州', 350)
puts(SongList.is_too_long(s1))
