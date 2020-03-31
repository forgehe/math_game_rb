require './question'

class Turn
  def initialize(count, player)
    @turn_count = count
    @current_player = player
    @question = Question.new
  end
  attr_reader :question, :turn_count

  def run
    if question.run
      return true
    else
      return false
    end
  end
end