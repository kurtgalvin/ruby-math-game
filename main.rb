require "./player.rb"
require "./math_game.rb"

p1 = Player.new(1)
p2 = Player.new(2)

game = MathGame.new(p1, p2)
game.start