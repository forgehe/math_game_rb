require "./helpers"
require "./player"
require './turn'

class Game
  include Ask
  def initialize
    puts "New Game!"
    p1_name = ask("Player 1, Enter your name")
    @p1 = Player.new(p1_name)
    p2_name = ask("Player 2, Enter your name")
    @p2 = Player.new(p2_name)
  end
  attr_reader :p1, :p2

  def run
    turn = 1
    while !self.finished? do
      puts '============================================='
      current_player = turn.odd? ? p1 : p2
      puts "Round: #{turn}, for #{current_player.name}"

      current_turn = Turn.new(turn, current_player)
      results = current_turn.run
      if results
        puts "Correct!"
      else
        puts "Wrong!"
        current_player.life -= 1
      end
      turn += 1
      puts
      puts "Round #{turn} Results!"
      puts "Scores:"
      puts "    #{p1.name}: #{p1.life}"
      puts "    #{p2.name}: #{p2.life}"
    end

    if p1.life <= 0
      puts "#{p2.name} wins!"
    else
      puts "#{p1.name} wins!"
    end
  end

  def finished? 
    if p1.life > 0 and p2.life > 0
      return false
    else
      return true
    end
  end
end