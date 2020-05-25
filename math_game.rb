require "./question.rb"
require "./turn.rb"

class MathGame
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @curr_player = player1
    end

    def play
        while true
            player = @curr_player
            question = Question.new
            turn = Turn.new(player, question)

            break
        end
    end

    private
    def next_player
        if @curr_player == @player1
            @curr_player = @player2
        else
            @curr_player = @player1
        end
        @curr_player
    end
end