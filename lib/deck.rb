require 'pry'
require_relative './card'

class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end

    def rank_of_card_at(index)
        @cards[index].rank
    end 

    def high_ranking_cards
        @cards.select { |card| card.rank >= 11 }
    end 

    def percent_high_ranking
        ((high_ranking_cards.length / @cards.length.to_f) * 100).round(2)
    end 

    def remove_card
        cards.shift
    end

    def add_card(card)
        @cards << card 
    end 

    def top_card_to_bottom
        @cards.rotate!
    end 
    #needed to add this method in order to make my new rules and redo method work. 
    #further explained in turn.rb file
end 