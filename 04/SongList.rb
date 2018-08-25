class SongList
    def initialize()
        @songs = Array.new()
        return self
    end
    def append(song)
        @songs.push(song)
        return self
    end
    def delete_first()
        return @songs.shift()
    end
    def delete_last()
        return @songs.pop()
    end
    def [](index)
        return @songs[index]
    end
end
