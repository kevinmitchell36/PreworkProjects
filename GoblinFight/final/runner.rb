require_relative 'monster'
require_relative 'hero'
require_relative 'game_board'


class Runner
  def initialize
    
  end

  def reset_screen # used for reseting the terminal screen
    print "\e[2J"
    print "\e[H"
  end
end

play_game = Runner.new

play_game.reset_screen

p "Choose your game piece: "
pawn_choice = "M "
new_game = GameBoard.new(pawn_choice)
current_square = new_game.current_square  # must be pulled into this file so that it can be updated.

new_game.reset_map
new_game.place_character
new_game.print_map

