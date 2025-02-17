require 'rainbow'

class Combat
  
  def initialize(hero, monster)
    @hero = hero
    @monster = monster
  end
  
  def check_for_death(defender)
    if defender.current_hp <= 0
      return true
    end
  end
  
  def turn(attacker, defender)
    if attacker.attack >= defender.armor_rating
      defender.current_hp = defender.current_hp - attacker.damage
      puts "Hit! #{defender.name} - #{defender.current_hp}/#{defender.hp}"
    else 
      puts "Miss..."
    end
  end
  
  def run_combat        # Change to include initiative
    hero_turn = true
    defender = @monster
    attacker = @hero
    while true
      if hero_turn
        puts Rainbow("#{@hero.name}'s turn").green 
        print "(a) Attack with weapon... "         # More options for here
        action = gets.chomp                      # Choice changes the turn method
        attacker = @hero
        defender = @monster
        turn(attacker, defender)
      else
        puts Rainbow("#{@monster.name}'s turn").red.bright
        attacker = @monster
        defender = @hero
        turn(attacker, defender)
      end
      if check_for_death(defender)
        return defender
      end
      hero_turn = !hero_turn
    end
  end

end



