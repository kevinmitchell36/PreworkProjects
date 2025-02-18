require 'rainbow'

class Combat
  
  def initialize(hero, monster)
    @hero = hero
    @monster = monster
    @fighting = true
  end
  
  def check_for_death(defender)
    if defender.current_hp <= 0
      return true
    end
  end

  def action(attacker, defender, selection) 
    if selection == "a"
      primary_attack(attacker, defender)
    elsif selection == "h"
      attacker.heal
    elsif selection == "b"
      attacker.block
    elsif selection == "f"
      @fighting = false
    end
  end
  
  def primary_attack(attacker, defender)
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
    while @fighting
      # method that displays hp totals for both combatants 
      if hero_turn
        puts Rainbow("#{@hero.name}'s turn =======================").green 
        puts "(a) Attack with weapon"         
        puts "(b) Block"         
        puts "(h) Heal"         
        puts "(f) Flee"   
        print "Choose your action: "  
        puts    
        selection = gets.chomp.downcase                      
        attacker = @hero
        defender = @monster
        action(attacker, defender, selection)
        puts Rainbow("=============================================").green
        puts
      else
        puts Rainbow("#{@monster.name}'s turn ~~~~~~~~~~~~~~~~~~~~~~").red.bright
        attacker = @monster
        defender = @hero
        primary_attack(attacker, defender)
        @hero.armor_rating = 10           # This rests the hero armor rating if they blocked. Should be handled elswhere...
        puts Rainbow("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~").red.bright
        puts
      end
      if check_for_death(defender)
        return defender
      end
      hero_turn = !hero_turn
    end
    return attacker
  end

end



