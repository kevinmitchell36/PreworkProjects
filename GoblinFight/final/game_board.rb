class GameBoard
  
  def initialize()
    @board = [
      ["╔","══","══","══","══","══","══","══","══","══","══","══","══","╗"],
      ["║","¤ ","▒ ","¤ ","¤ ","▒ ","¤ ","¤ ","¤ ","▒ ","¤ ","¤ ","¤ ","║"],
      ["║","¤ ","▒ ","▒ ","¤ ","¤ ","¤ ","▒ ","¤ ","▒ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","▒ ","▒ ","¤ ","▒ ","▒ ","¤ ","▒ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","¤ ","¤ ","¤ ","¤ ","▒ ","¤ ","¤ ","▒ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","¤ ","▒ ","¤ ","¤ ","¤ ","▒ ","¤ ","¤ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","¤ ","▒ ","▒ ","▒ ","▒ ","▒ ","¤ ","▒ ","▒ ","¤ ","║"],
      ["║","¤ ","▒ ","¤ ","¤ ","¤ ","¤ ","¤ ","¤ ","¤ ","▒ ","🍪","¤ ","║"],
      ["╚","══","══","══","══","══","══","══","══","══","══","══","══","╝"]
    ]  
    @current_square = [1,1]
    @current_board
  end

  def copy_row(row) # this is to copy the row for animation purposes
    duplicate_row = row.dup
    duplicate_row.map! { |cell| cell.dup }
  end
  
  def reset_map # this works with copy row to create @current_board, a copy of @board
    duplicate_array = @board.dup
    @current_board = duplicate_array.map! { |row| copy_row(row) }
  end
  
  def place_character
    @current_board[@current_square[0]][@current_square[1]] = "M "
  end
  
  def print_map
    @current_board.each do |row|
      puts row.join("")
    end
  end

  def move_up
    @current_square[0] -= 1
  end
  
  def move_down
    @current_square[0] += 1 
  end
  
  def move_left
    @current_square[1] -= 1 
  end
  
  def move_right
    @current_square[1] += 1 
  end

end

