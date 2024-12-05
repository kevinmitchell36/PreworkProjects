class GameBoard
  
  def initialize
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
    @presenting_map
  end

  def xerox_array(array) # this is to copy the array for animation purposes
    duplicate_array = array.dup
    duplicate_array.map! { |element| element.dup }
  end
  
  def reset_map # this works with deep_dup (xerox_array?) to create @presenting_map, a copy of @map
    duplicate_array = @board.dup
    @presenting_map = duplicate_array.map! { |element| xerox_array(element) }
  end
  
  def place_character
    @presenting_map[@current_square[0]][@current_square[1]] = "🐻"
  end
  
  def print_map
    @presenting_map.each do |row|
      puts row.join("")
    end
  end

end

