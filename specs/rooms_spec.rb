require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < MiniTest::Test
    def setup()
        @guest1 = Guests.new("Danny", 35)
        @guest2 = Guests.new("Fiona", 24)
        @guest3 = Guests.new("Jill", 31)
        @guests = [@guest1, @guest2]

        @song1 = Songs.new("Midnight Train to Georgia", 4, "Gladys Knight & The Pips")
        @song2 = Songs.new("Catfish Blues", 4, "Muddy Waters")
        @song3 = Songs.new("Woke Up This Morning", 4, "Lightnin' Hopkins") 
        @songs_in_room = [@song1, @song2]

        @rooms = Rooms.new("Blues Room", @guests, @songs_in_room)
    end

    def test_room_has_name()
        assert_equal("Blues Room", @rooms.name)
    end

    def test_room_has_guests()
        assert_equal(2, @guests.length())
    end

    def test_room_has_songs()
        assert_equal(2, @songs_in_room.length())
    end

    def test_new_guest_has_been_checked_in()
        @rooms.check_guest_in(@guest3)
        assert_equal(3, @guests.length())
    end

    def test_guest_has_been_checked_out()
        @rooms.check_guest_out(@guest1)
        assert_equal(1, @guests.length())
    end
end