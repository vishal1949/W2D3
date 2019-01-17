require_relative "card"

class Deck
    attr_reader :stack_of_cards
    def initialize
        @stack_of_cards = []
        populate
    end

    def populate
        suit = ['heart', 'clover', 'diamond', 'spades']
        suit.each do |sym|
            (1..13).each do |num|
                @stack_of_cards << Card.new(num, sym)
            end
        end
    end
end