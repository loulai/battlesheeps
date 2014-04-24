require "board_sheep"

BOARD = {
			A1: "s", A2: "s", A3: "s", A4: "s", A5: " ", A6: " ", A7: " ", A8: " ", A9: " ", A10: " ",
			B1: " ", B2: " ", B3: " ", B4: " ", B5: " ", B6: " ", B7: " ", B8: " ", B9: " ", B10: " ",
			C1: " ", C2: " ", C3: " ", C4: " ", C5: " ", C6: " ", C7: " ", C8: " ", C9: " ", C10: " ",
			D1: " ", D2: " ", D3: "x", D4: "x", D5: "x", D6: " ", D7: " ", D8: " ", D9: " ", D10: " ",
			E1: " ", E2: " ", E3: " ", E4: " ", E5: " ", E6: " ", E7: " ", E8: " ", E9: " ", E10: " ",
			F1: " ", F2: " ", F3: " ", F4: " ", F5: " ", F6: " ", F7: " ", F8: " ", F9: " ", F10: " ",
			G1: " ", G2: " ", G3: " ", G4: "o", G5: "o", G6: "o", G7: " ", G8: " ", G9: " ", G10: " ",
			H1: " ", H2: " ", H3: " ", H4: " ", H5: " ", H6: " ", H7: " ", H8: " ", H9: " ", H10: " ",
			I1: " ", I2: " ", I3: " ", I4: " ", I5: " ", I6: " ", I7: " ", I8: " ", I9: " ", I10: " ",
			J1: " ", J2: " ", J3: " ", J4: " ", J5: " ", J6: " ", J7: " ", J8: " ", J9: " ", J10: " ",
		}	


describe "farm" do

	let (:farm) {Board.new("Farmer John", BOARD)}

	context "when created" do

		it "belongs to a farmer" do
			expect(farm.owner).to eq "Farmer John"
		end

		it "is empty" do
			farm = Board.new
			expect(farm.grid.values).to eq Array.new(100) { " " }
		end

	end

	context "accessing coordinates" do

		it "knows what is in every square" do
			expect(farm.grid[:A1]).to eq "s"
			expect(farm.grid[:D3]).to eq "x"
			expect(farm.grid[:G5]).to eq "o"
		end

		it "can register shots at sheeps" do
			expect(farm.grid[:A1]).to eq "s"
			farm.register_shot("A1")
			expect(farm.grid[:A1]).to eq "x"
		end

		it "can register shots at grass" do
			expect(farm.grid[:H1]).to eq " "
			farm.register_shot("H1")
			expect(farm.grid[:H1]).to eq "o"
		end

	context "returning an array for the server" do

	  	it 'the grid should have 10 rows' do
	  		expect(farm.rows.count).to eq 10
  		end

  		it 'each row should have 10 cells' do
    		expect(farm.rows.all? { |one_row| one_row.count == 10 }).to be_true
  		end

	end

	context "populating with sheeps" do
		
		it "a lamb chop can be created" do
			expect(farm.grid[:A10]).to eq " "
			farm.place_lamb_chop("A10")
			expect(farm.grid[:A10]).to eq "s"
		end

		# it "a lamb can be created" do
		# 	expect(farm.grid[:J1]).to eq " "
		# 	expect(farm.grid[:J2]).to eq " "
		# 	farm.place_lamb("J1")
		# 	expect(farm.grid[:J1]).to eq "s"
		# 	expect(farm.grid[:J2]).to eq "s"
		# end

		it "a sheep can be created" do
			expect(farm.grid[:J1]).to eq " "
			expect(farm.grid[:J2]).to eq " "
			farm.place_lamb([:J1, :J2], "s")
			expect(farm.grid[:J1]).to eq "s"
			expect(farm.grid[:J2]).to eq "s"
		end

		it "sheeps cannot be stacked on sheeps" do
			expect(farm.can_place?([:A1, :A2, :A3, :A4])).to be_false
		end




	end


end

	

end

