require "board_sheep"

describe "farm" do

	context "when created" do
		
		it "belongs to a farmer" do
			farm = Board.new("Farmer John")
			expect(farm.owner).to eq "Farmer John"
		end

		it "is empty" do
			
		end

	end

end

