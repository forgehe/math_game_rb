class Questions
  attr_reader :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def nums
    puts "what is #{num1} and #{num2}"
  end

  def question
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "what is: #{num1} + #{num2}"
    return num1 + num2
  end

end