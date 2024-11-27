# DM flavored messages
hero_death_messages = ["The hero is no more...", "Our hero is dead...", "The goblin runs the hero through..."]

goblin_death_messages = ["The goblin dies by your blade!", "The goblin dies!", "You win, the goblin is no more!"]

class Combatant 
  
  def initialize(role, hp, armor)
    @role = role
    @hp = hp
    @armor = armor
  end

  def role
    return @role
  end

  def hp
    return @hp
  end

  def armor
    return @armor
  end

  def hp=(new_hp)
    @hp = new_hp
    return @hp
  end

  def armor=(new_armor)
    @armor = new_armor
    return @armor
  end

  def attack
    return rand(1..20)
  end

  def damage
    return rand(1..6)
  end

end



hero = Combatant.new("warrior", 6, 10)
monster = Combatant.new("goblin", 6, 10)

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









