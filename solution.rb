require 'pry'

class Card
    attr_accessor :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end

class Deck
    attr_accessor :cards

    def initialize
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
        suits.each do |suit|
            ranks.each do |rank|
                 @cards << Card.new(suit, rank)
             end
        end
      
    end

    def choose_card
        @cards.pop
    end
end


    




#Card.new("A", "Hearts")
# binding.pry
# puts 's'

# Construct a class for a Deck of cards, which has an attribute cards consisting of an array of 52 Card objects.
# A Card consists of a rank ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K") paired with a suit ("Hearts", "Clubs", "Diamonds", "Spades")
# Your Deck should have a method #choose_card which selects a random card from the deck and removes it.





# ranks.each do |rank|
#     suits.each do |suit|
#          @cards << Card.new(suit: suit, rank: rank)
#      end
# end