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

require 'test/unit'
class TestSongList < Test::Unit::TestCase
    def test_delete
        list = SongList.new()
        s1 = Song.new('title1', 'artist1', 1)
        s2 = Song.new('title2', 'artist2', 2)
        s3 = Song.new('title3', 'artist3', 3)
        s4 = Song.new('title4', 'artist4', 4)
        list.append(s1)
            .append(s2)
            .append(s3)
            .append(s4)

        assert_equal(s1, list[0])
        assert_equal(s3, list[2])
        assert_nil(list[9])

        assert_equal(s1, list.delete_first())
        assert_equal(s2, list.delete_first())
        assert_equal(s4, list.delete_last())
        assert_equal(s3, list.delete_last())
        assert_nil(list.delete_last())
    end
end

        
        