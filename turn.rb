class Turn
    def initialize(player, question)
        @player = player
        @question = question
        puts "----- NEW TURN -----"
        puts "#{@player}: #{@question}"
    end

    def play
        print "> "
        answer = gets.chomp.to_i
        if @question.correct? answer
            puts "#{@player}: YES! You are correct."
            return true
        else 
            puts "#{@player}: Seriously? No!"
            @player.wrong_answer
            return false
        end
    end
end