class Player
    @@max_lives = 3

    def initialize(plyer_number)
        @number = plyer_number
        @lives = @@max_lives
    end

    def wrong_answer
        @lives = @lives - 1
    end

    def alive?
        @lives > 0
    end

    def score
        "#{@lives}/#{@@max_lives}"
    end

    def to_s
        "Player #{@number}"
    end
end