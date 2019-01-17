require 'rspec'
require 'deck'

RSpec.describe Deck do 
    subject(:deck) {Deck.new}
    describe "#initalize" do 
        context "Deck should have 52 cards" do
            it "should have 52 cards" do 
                expect(deck.stack_of_cards.length).to eq(52)
            end
        end
    end
end