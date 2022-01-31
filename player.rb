class Player
  attr_accessor :lives, player
  def initialize(player)
    @player = player
    @lives = 3
  end

  def lose_life
    self.lives -=1
  end

  def alive?
    self.lives > 0
end  

end

