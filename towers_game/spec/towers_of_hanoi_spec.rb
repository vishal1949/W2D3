require 'rspec'
require 'towers_of_hanoi'

RSpec.describe TowersOfHanoi do
    subject(:game) {TowersOfHanoi.new}
    describe "#initialize" do
        it "should have 2d array with array[0] having [3,2,1]" do
            expect(game.towers).to eq([[3,2,1],[],[]])
        end
		end
		
		describe "#valid_moves?" do
			context "if move is valid" do
				it "should return true" do
					expect(game.valid_move?(0, 1)).to be true
				end
			end


			context "if move is invalid" do 
				it "should return false" do 
					expect(game.valid_move?(2,0)).to be false 
				end
			end
		end

		describe "#move_disc" do
			it "should move disk 1 in towers[0] to towers[1]" do
				game.move_disc(0,1)
				expect(game.towers).to eq([[3,2],[1],[]])
			end
		end
end




#to be check for object_id