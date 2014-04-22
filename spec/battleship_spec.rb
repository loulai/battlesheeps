require "battleship"

describe "battleship game" do

	context "the board" do
		
	class Board
		
  def initialize player
    @player = player
  end
  
  def owner
    @player.name
  end
  
  # This method should register the shot at the coordinates passed
  # hitting a ship or
  # just hitting the water.
  def register_shot at_coordinates  
  end
  
  # This method returns an array containing 10 arrays with 10 
  # elements each where:
  # - an empty string ('') denotes an empty space in the grid
  # - an 'o' denotes a shot in the water
  # - an 'x' denotes a hit on a ship
  # - an 's' denotes a ship
  # you can change the representations as you please, but make sure
  # that you have
  # four different types
  def rows
  end
  
  # This method returns an array containing 10 arrays with 10
  # elements each (as in rows) replacing the ships with an empty
  # string ('') so that your opponent cannot see your ships.
  def opponent_view
  end
end

class Player
  # Initializes a new player with her/his name.
  #
  # You will have to create a board in there and randomize the
  # positioning of your ships on the board.
  def initialize name
  end
  
  # Tells us if there are still ships that have not been hit
  # on her/his board.
  def has_ships_still_floating?
  end
  
  # Shoots at the opponents board.
  def shoot(at_coordinates, opponent_board)
  end
end



	end


end

