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
            question = Question.new
            turn = Turn.new(@curr_player, question)
            puts "here"
            break
        end
    end
end