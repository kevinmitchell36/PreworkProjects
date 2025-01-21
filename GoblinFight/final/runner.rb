require_relative 'monster'
require_relative 'hero'
require_relative 'game_board'
require_relative 'encounter'


class Runner

  def initialize
    @encounter = false 
  end

  def reset_screen # used for reseting the terminal screen
    print "\e[2J"
    print "\e[H"
  end

  def encounter_chance
    chance = rand(1..20)
    return random_encounter(chance)
  end

  def random_encounter(chance)
    if (chance >= 1 && chance <= 15)
      @encounter = true
    end
    return @encounter
  end

end

play_game = Runner.new()
play_game.reset_screen

new_game = GameBoard.new()
not_finished = true

player_char = Hero.new("Dash Rendar", "sword", 10)

def run_encounter(player_char, monster)
  encounter = Encounter.new(player_char, monster)
  player_chars_turn = true
  defender = monster
  attacker = player_char
  while !encounter.check_for_death(defender)
    if player_chars_turn
      puts "Player's turn"
      puts "Player's hp #{player_char.hp}"
      attacker = player_char
      defender = monster
      encounter.turn(attacker, defender)
    else
      puts "Goblin's turn"
      puts "Goblin's hp #{monster.hp}"
      attacker = monster
      defender = player_char
      encounter.turn(attacker, defender)
    end
    player_chars_turn = !player_chars_turn
  end
end

while not_finished
  # play_game.reset_screen
  new_game.reset_map
  new_game.place_character
  new_game.print_map

  puts "Enter a direction: w, a, s, d"
  puts "Type 'end' to stop the program"
  input = gets.chomp.downcase
  if input == 'end'
    not_finished = false
  end
  if input == "s" 
    player_char.hp = 10
    new_game.move_down
    if play_game.encounter_chance
      monster = Monster.new("Goblin", "sword", 10)
      run_encounter(player_char, monster)
    end
  end
  if input == "w"
    new_game.move_up
  end
  if input == "a"
    new_game.move_left
  end
  if input == "d"
    new_game.move_right
  end
end

