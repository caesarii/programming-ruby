class Song
    def initialize(name, artist, duration)
        @name = name
        @artist = artist
        @duration = duration
    end
    def to_s
        return "Song: #@name--#@artist (#@duration)"
    end
end

class KaraokeSong < Song
    def initialize(name, artist, duration, lyrics)
        super(name, artist, duration)
        @lyrics = lyrics
    end
    def to_s
        return "Song: #@name--#@artist (#@duration) {#@lyrics}"
    end
end

song = KaraokeSong.new('爱的劳工', '左小祖咒', 260, '妹妹你可知道')
str = song.to_s()
puts(str)
