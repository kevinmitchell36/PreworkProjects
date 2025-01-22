require 'rainbow'

class Runner
  
  def initialize
    @encounter = false 
  end
  
  def encounter_chance
    chance = rand(1..20)
    return random_encounter(chance)
  end
  
  def random_encounter(chance)
    if (chance >= 1 && chance <= 5)
      @encounter = true
    end
  end
  
  def generate_monster(player_char)
    if @encounter
      monster = Monster.new("Goblin", "sword", 10)
      run_encounter(player_char, monster)
    end
    @encounter = !@encounter
  end
  
  def run_encounter(player_char, monster)        # Change to include initiative
    encounter = Encounter.new
    player_chars_turn = true
    defender = monster
    attacker = player_char
    while !encounter.check_for_death(defender)
      if player_chars_turn
        puts Rainbow("#{player_char.name}'s turn  HP  #{player_char.hp}").green 
        puts "(a) Attack with weapon..."         # More options for here
        puts
        action = gets.chomp                      # Choice changes the turn method
        attacker = player_char
        defender = monster
        encounter.turn(attacker, defender)
      else
        puts Rainbow("#{monster.name}'s turn HP #{monster.hp}").red.bright
        puts 
        attacker = monster
        defender = player_char
        encounter.turn(attacker, defender)
      end
      player_chars_turn = !player_chars_turn
    end
    puts "Rest (r) or continue (c)?"
    post_encounter = gets.chomp
  end
  
end



