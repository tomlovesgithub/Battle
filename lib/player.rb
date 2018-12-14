class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def name
    @name
  end

  def attack(victim)
    victim.reduce_hp
  end

  def reduce_hp
    @hp -= 10
  end
  
end
