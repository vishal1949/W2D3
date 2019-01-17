require 'rspec'
require 'hand'

RSpec.describe Hand do
    
    let(:flush_hand) do 
        Hand.new(
            [
            Card.new(1,"Heart"),
            Card.new(2,"Heart"),
            Card.new(3,"Heart"),
            Card.new(4,"Heart"),
            Card.new(5,"Heart")
            ]
        )
    end 
    subject(:hand) {Hand.new(flush_hand)}
    #player_hand is an array of card object
    describe "#flush" do 
        context "will return 'Flush' if all cards have same suit" do
            it "should return 'Flush'" do 
                expect(hand.flush(flush_hand.cards)).to eq('Flush')
            end
        end
    end
end