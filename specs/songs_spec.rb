require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative('../songs')

class TestSongs < MiniTest::Test
    def setup()
        @song1 = Songs.new("We Will Rock You", 5, "Queen")
    end

    def test_song_has_title()
        assert_equal("We Will Rock You", @song1.title)
    end

    def test_song_has_play_time()
        assert_equal(5, @song1.play_time)
    end

    def test_song_has_artist()
        assert_equal("Queen", @song1.artist)
    end
end