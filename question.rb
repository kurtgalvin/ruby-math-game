class Question
    def initialize
        @a = Random.rand(10)
        @b = Random.rand(10)
    end

    def correct?(answer)
        answer == self.answer
    end

    def to_s
        "What does #{@a} #{self.class.to_s.downcase} #{@b} equal?"
    end
end

class Plus < Question
    def answer
        @a + @b
    end
end

class Minus < Question
    def answer
        @a - @b
    end
end

class Multiply < Question
    def answer
        @a * @b
    end
end