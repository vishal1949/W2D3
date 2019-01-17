require 'rspec'
require 'card'

RSpec.describe Card do 
    subject(:cards) {Card.new(2, "heart")}
    describe "#initialize" do
        context "will assign a value and suit to the card" do
            it "should assign a value" do
                expect(cards.value).to eq(2)
            end
            it "will assign a suit" do
                expect(cards.suit).to eq("heart")
            end
        end
    end
end