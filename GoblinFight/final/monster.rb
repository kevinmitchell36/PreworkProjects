class Monster
  attr_accessor :creature_type, :weapon1, :weapon2, :armor_rating
  def initialize(creature_type, weapon1, weapon2, armor_rating)
    @creature_type = creature_type
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

goblin = Monster.new("goblin", "spear", "magic bolt", 10)
puts "The #{goblin.creature_type} thrusts his #{goblin.weapon1} at you and rolls a #{goblin.attack}"
p goblin.weapon1
p goblin.attack
p goblin.weapon1_damage