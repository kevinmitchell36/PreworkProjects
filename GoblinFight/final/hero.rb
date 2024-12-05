class Hero
  
  attr_accessor :name, :vocation, :weapon1, :weapon2, :armor_rating

  def initialize(name, vocation, weapon1, weapon2, armor_rating)
    @name = name
    @vocation = vocation
    @weapon1 = weapon1
    @weapon2 = weapon2
    @armor_rating = armor_rating
  end

  def attack
    attack_roll = rand(1..20)
    return attack_roll
  end

  def weapon1_damage
    damage_roll = rand(1..6)
    return damage_roll
  end

  def weapon2_damage
    damage_roll = rand(2..6)
    return damage_roll
  end

end

