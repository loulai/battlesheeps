class Board

	EMPTY_BOARD = {
			A1: " ", A2: " ", A3: " ", A4: " ", A5: " ", A6: " ", A7: " ", A8: " ", A9: " ", A10: " ",
			B1: " ", B2: " ", B3: " ", B4: " ", B5: " ", B6: " ", B7: " ", B8: " ", B9: " ", B10: " ",
			C1: " ", C2: " ", C3: " ", C4: " ", C5: " ", C6: " ", C7: " ", C8: " ", C9: " ", C10: " ",
			D1: " ", D2: " ", D3: " ", D4: " ", D5: " ", D6: " ", D7: " ", D8: " ", D9: " ", D10: " ",
			E1: " ", E2: " ", E3: " ", E4: " ", E5: " ", E6: " ", E7: " ", E8: " ", E9: " ", E10: " ",
			F1: " ", F2: " ", F3: " ", F4: " ", F5: " ", F6: " ", F7: " ", F8: " ", F9: " ", F10: " ",
			G1: " ", G2: " ", G3: " ", G4: " ", G5: " ", G6: " ", G7: " ", G8: " ", G9: " ", G10: " ",
			H1: " ", H2: " ", H3: " ", H4: " ", H5: " ", H6: " ", H7: " ", H8: " ", H9: " ", H10: " ",
			I1: " ", I2: " ", I3: " ", I4: " ", I5: " ", I6: " ", I7: " ", I8: " ", I9: " ", I10: " ",
			J1: " ", J2: " ", J3: " ", J4: " ", J5: " ", J6: " ", J7: " ", J8: " ", J9: " ", J10: " ",
		}	

	def initialize(farmer_name = "Some_name", farm = EMPTY_BOARD)
		@name = farmer_name
		@farm = farm
	end

	def owner
		@name
	end

	def grid
		@farm
	end

	def register_shot(at_coordinates)
		grid[at_coordinates.to_sym] == "s" ? grid[at_coordinates.to_sym] = "x" : grid[at_coordinates.to_sym] = "o"
	end

	# def rows
	# 	grid.values.each_slice(10) {|a| p a}
	# end
	def rows
		organized_board = []
		grid.values.each_slice(10) {|a| organized_board << a}
		organized_board
	end

	def place_lamb_chop at_coordinates
		grid[at_coordinates.to_sym] = "s"
	end

	def place_lamb(coords, forced_change)
		coords.each { |each_coord| grid[each_coord.to_sym] = "#{forced_change}" }
	end

	def can_place?(wannabe_sheep_coords)
		self.rows
	end


	
end

































































