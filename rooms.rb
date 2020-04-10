class Rooms
    attr_reader :name, :guests, :songs

    def initialize(name, guests, songs)
        @name = name
        @guests = guests
        @songs = songs
    end

    def check_guest_in(new_guest)
        @guests.push(new_guest)
    end
end