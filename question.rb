class Question
    def initialize
        @a = Random.rand(10)
        @b = Random.rand(10)
    end

    def correct?(answer)
        if answer == @a + @b
            return true
        else 
            return false
        end
    end

    def to_s
        "What does #{@a} plus #{@b} equal?"
    end
end