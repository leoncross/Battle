

class Game
  attr_reader :player_1, :player_2, :status


  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2

  end

  def attack(player)
    player.receive_damage
  end

end
