#require_relative 'player'
require_relative 'card'

#send below line to player hand
POSSIBLE_WINS = ["Flush", "Straight", "Four of a kind", "three of a kind", "two pair", "pair", "high card"].reverse

class Hand
    attr_reader :cards

    def initialize(cards) #array of players cards
        @cards = cards # array of card objects
        @best_available_hand = nil
    end

    def straight?(player_hand)

        #we need to look at hand.value
    end

    def flush(player_hand)
        suit = player_hand.first.suit
        player_hand.each do |card|
            return nil if card.suit != suit #need to change this
        end
        return 'Flush'
    end

    def check_duplicates?(player_hand, num_of_dups)
        hash = Hash.new(0)
        player_hand.each do |card|
            hash[card.value] += 1
        end
        hash.each do |key,val|
            return true if val == num_of_dups
        end
        return false
    end

    def four_of_kind(player_hand)
        hash = Hash.new(0)
        player_hand.each do |card|
            hash[card.value] += 1
        end
        hash.each do |key,val|
            return true if val == 4
        end
        return false
    end

    def triple?(player_hand)
        #check if 4 of a kind before triple
    end

    def pair?(player_hand)
        #check if triple before pair
    end

    def high_card?(player_hand)
        #check this last
    end

end