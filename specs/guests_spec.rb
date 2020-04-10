require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative('../guests')

class TestGuests < MiniTest::Test
    def setup()
        @guest1 = Guests.new("Jimmy", 30)
    end

    def test_guest_has_name()
        assert_equal("Jimmy", @guest1.name)
    end
end