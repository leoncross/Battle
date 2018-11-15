require_relative 'game'

class Player
  attr_accessor :name, :health

  HEALTH = 30

  def initialize(name, health = HEALTH)
    @name = name
    @health = health
  end

  def health
    @health
  end

  def receive_damage
    @health = @health - 10
    dead?
  end

  def dead?
    return false if @health > 5
    return true
  end

end
