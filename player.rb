class Player
  attr_accessor :lives, name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    self.lives -=1
  end

  def died?
    self.lives == 0
end  

end

