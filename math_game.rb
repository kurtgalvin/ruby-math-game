require "./question.rb"
require "./turn.rb"

class MathGame
    @@questions = [
        Plus, 
        Minus,
        Multiply
    ]

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @curr_player = player1
    end

    def start
        while true
            question_index = Random.rand(@@questions.length)
            question = @@questions[question_index].new
            turn = Turn.new(@curr_player, question)
            turn.play
            puts "P1: #{@player1.score} vs P2: #{@player2.score}"

            unless @curr_player.alive?
                game_over
                break
            else
                next_player
            end
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

    def game_over
        player = next_player
        puts "#{player} wins with a score of #{player.score}"
        puts "----- GAME OVER -----"
        puts "Good bye!"
    end
end