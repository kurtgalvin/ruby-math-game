class Turn
    def initialize(player, question)
        puts "----- NEW TURN -----"
        puts "#{player}: #{question}"
        print "> "
        answer = gets.chomp
    end
end