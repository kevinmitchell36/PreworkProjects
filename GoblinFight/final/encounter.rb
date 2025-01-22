class Encounter
  
  def check_for_death(defender)
    if defender.hp <= 0
      puts "#{defender.name} dead!"
      return true
    end
  end
  
  def turn(attacker, defender)
    if attacker.attack >= defender.armor_rating
      puts "Hit!"
      defender.hp = defender.hp - attacker.damage
    else 
      puts "Miss..."
    end
  end

end