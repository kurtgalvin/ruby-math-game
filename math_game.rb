require "./question.rb"
require "./turn.rb"

class MathGame
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @curr_player = player1
    end

    def start
        while true
            player = @curr_player
            question = Question.new
            turn = Turn.new(player, question)
            puts "P1: #{@player1.score} vs P2: #{@player2.score}"
            turn.play

            unless player.alive?
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