require './players.rb'
require './questions.rb'
require './turns.rb'
require './input.rb'

class Game
  def start
    puts "New Game!"
    p1_name = Input.new.ask("Player 1, Enter your name")
    p1 = Players.new(p1_name)
    p p1
    p2_name = Input.new.ask("Player 2, Enter your name")
    p2 = Players.new(p2_name)
    p p2
    
    turn = 1
    while p1.life > 0 and p2.life > 0 do
      question = Questions.new
      question.nums
      current_turn = Turns.new(turn)
      turn += 1
      value = Input.new.ask("testing")
      puts value
      p1.life -= 1
      p p1
    end
    puts "deado"
  end
end
game = Game.new
game.start