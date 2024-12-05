require_relative 'monster'
require_relative 'hero'
require_relative 'game_board'


new_game = GameBoard.new

new_game.reset_map
new_game.place_character
new_game.print_map

