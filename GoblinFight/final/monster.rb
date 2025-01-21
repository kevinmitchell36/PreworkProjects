class Monster
  attr_accessor :name, :weapon1, :armor_rating, :hp
  def initialize(name, weapon1, armor_rating)
    @name = name
    @weapon1 = weapon1
    @armor_rating = armor_rating
    @hp = 10
  end

  def attack
    attack_roll = rand(1..20)
    return attack_roll
  end

  def damage
    damage_roll = rand(1..6)
    return damage_roll
  end



end


