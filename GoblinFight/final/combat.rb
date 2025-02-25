require 'rainbow'

class Combat
  
  def initialize(hero, monster)
    @hero = hero
    @monster = monster
    @fighting = true
    @dead = nil
  end

  def determine_initiative(round)
    first_actor = @hero.initiative >= @monster.initiative ? @hero : @monster
    puts "================= Round #{round} - #{first_actor.name} goes first ========================="
    puts "Hero HP #{@hero.current_hp}/#{@hero.hp}                                        #{@monster.name.capitalize} HP #{@monster.current_hp}/#{@monster.hp}"
    return first_actor
  end

  def hero_turn
    health_bar = "="
    puts
    puts Rainbow("#{@hero.name}'s turn HP: #{health_bar * @hero.current_hp}").green 
    puts "(ap) Sword (as) Spear"         
    puts "(b) Block"         
    puts "(h) Heal"         
    puts "(f) Flee"   
    puts "(sp) Spell"
    print "Choose your action: "  
    puts    
    selection = gets.chomp.downcase                      
    attacker = @hero
    defender = @monster
    hero_action(attacker, defender, selection)
    puts Rainbow("HP: #{health_bar * @hero.current_hp}").green
    puts
    check_for_death(defender)
  end

  def monster_turn
    health_bar = "~"
    puts
    puts Rainbow("#{@monster.name}'s turn HP: #{health_bar * @monster.current_hp}").red.bright
    attacker = @monster
    defender = @hero
    damage = attacker.damage
    attack(attacker, defender, damage)
    @hero.armor_rating = 10           # This resets the hero armor rating if they blocked. Should be handled elswhere...
    puts Rainbow("HP: #{health_bar * @monster.current_hp}").red.bright
    puts
    check_for_death(defender)
  end

  def hero_action(attacker, defender, selection) 
    if selection == "ap"
      damage = attacker.prime_damage
      puts "Damage: #{damage}"
      attack(attacker, defender, damage)
    elsif selection == "as"
      damage = attacker.sec_damage
      puts "Damage: #{damage}"
      attack(attacker, defender, damage)
    elsif selection == "h"
      attacker.heal
    elsif selection == "b"
      attacker.block
    elsif selection == "f"
      @fighting = false
      @dead = attacker
    elsif selection == "sp"
      damage = attacker.spell
      primary_spell(attacker, defender, damage)
    end
  end

  def primary_spell(attacker, defender, damage)
    defender.current_hp -= damage
    puts "Spell hits! #{damage} damage"
  end
  
  def attack(attacker, defender, damage)
    if attacker.attack >= defender.armor_rating
      defender.current_hp -= damage
      puts "Hit! #{attacker.name} does #{damage} damage"
    else 
      puts "Miss..."
    end
  end

  def check_for_death(defender)
    if defender.current_hp <= 0
      @fighting = false
      @dead = defender
    end
  end
  
  def run_combat       
    round = 1
    while @fighting
      top_of_round = determine_initiative(round)
      # method that displays hp totals for both combatants 
      if top_of_round == @hero
        hero_turn
        break if @dead
        monster_turn
        break if @dead
      else
        monster_turn
        break if @dead
        hero_turn
        break if @dead
      end
      round += 1
    end
    return @dead
  end

end



