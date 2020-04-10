class Songs
    attr_reader :title, :play_time

    def initialize(title, play_time)
        @title = title
        @play_time = play_time
    end
end