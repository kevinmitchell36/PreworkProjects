class Combatant
  
  def initialize(input_name, input_armor_rating, input_hp)
    @name = input_name
    @armor_rating = input_armor_rating
    @hp = input_hp
  end

  def get_name
    return @name
  end

  def get_armor_rating
    return @armor_rating
  end

  def get_hp
    return @hp
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


hero = Combatant.new("Dash", 10, 15)
monster = Combatant.new("Goblin", 6, 10)

def check_for_death(defender)
  if defender.hp <= 0
    return true
  end
end

def turn(attacker, defender)
  if attacker.attack >= defender.armor
    defender.hp = defender.hp - attacker.damage
    puts check_for_death(defender)
  else 
    puts "Miss..."
  end
end

puts turn(hero, monster)
