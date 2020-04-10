class Songs
    attr_reader :title, :play_time, :artist

    def initialize(title, play_time, artist)
        @title = title
        @play_time = play_time
        @artist = artist
    end
end