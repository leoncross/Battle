
class Player
  attr_reader :name

  HEALTH = 30

  def initialize(name)
    @name = name
    @health = HEALTH

  end

  def health
    @health
  end

  def receive_damage
    @health = @health - 10
  end

  def attack(player)
    player.receive_damage
  end

end
