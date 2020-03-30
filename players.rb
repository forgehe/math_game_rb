class Players
  def initialize(name)
    @name = name
    @life = 3
  end
  attr_reader :name
  attr_accessor :life
end