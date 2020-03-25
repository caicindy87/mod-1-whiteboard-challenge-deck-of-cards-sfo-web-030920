require 'pry'
class Deck
    attr_accessor :cards

    def initialize
        @cards = Card.all
    end

    def create_deck(rank:, suit:)
        Card.new(rank: "A", suit: "Hearts")
    end
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
end

class Card
    attr_accessor :rank, :suit
    @@all = []

    def initialize(rank:, suit:)
        @rank = rank
        @suit = suit
        @@all << self
    end

    def self.all
        @@all
    end
end

binding.pry
puts 's'


# Construct a class for a Deck of cards, which has an attribute cards consisting of an array of 52 Card objects.
# A Card consists of a rank ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K") paired with a suit ("Hearts", "Clubs", "Diamonds", "Spades")
# Your Deck should have a method #choose_card which selects a random card from the deck and removes it.