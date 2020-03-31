require "./helpers"
class Question
  include Ask
  attr_reader :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def run 
    return self.question
  end

  def question
    answer = ask("What is #{num1} + #{num2}").to_i
    if answer == num1 + num2
      return true
    else
      return false
    end
  end

end