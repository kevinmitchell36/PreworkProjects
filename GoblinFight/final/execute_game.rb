require_relative 'monster'
require_relative 'hero'
require_relative 'game_board'
require_relative 'encounter'
require_relative 'runner'

current_game = GameBoard.new()
run_game = Runner.new()
current_game.reset_screen
print "What is your name, hero? "
character_name = gets.chomp
player_char = Hero.new(character_name, "sword", 10)


while true
  current_game.reset_screen    # work this into game after an encounter
  current_game.reset_map
  current_game.place_character
  current_game.print_map
  player_char.hp = 10   # Player's hp resets after each move - add healing/rest option?

  puts "Enter a direction: w, a, s, d"
  puts "Type 'end' to stop the program"
  input = gets.chomp.downcase
  if input == 'end'
    break
  elsif input == "s" 
    current_game.move_down
    unless current_game.moved_to_a_valid_square?
      current_game.move_up
    end
  elsif input == "w"
    current_game.move_up
    unless current_game.moved_to_a_valid_square?
      current_game.move_down
    end
  elsif input == "a"
    current_game.move_left
    unless current_game.moved_to_a_valid_square?
      current_game.move_right
    end
  elsif input == "d"
    current_game.move_right
    unless current_game.moved_to_a_valid_square?
      current_game.move_left
    end
  end
  if current_game.win?
    puts "You won!!!!"
    break
  end
  if run_game.encounter_chance
    run_game.generate_monster(player_char)
  end
end