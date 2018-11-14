
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

  def attacked
    @health = @health - 10
  end

end
