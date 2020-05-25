class Player
    attr_reader :lives
    @@max_lives = 3

    def initialize(plyer_number)
        @number = plyer_number
        @lives = @@max_lives
    end
end