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

        @song1 = Songs.new("Midnight Train", 6)
        @song2 = Songs.new("Catfish Blues", 4)
        @song3 = Songs.new("Hilltop Jazz", 3) 
        @songs_in_room = [@song1, @song2]

        #@rooms = 
    end
end