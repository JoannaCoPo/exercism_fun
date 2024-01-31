module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten", "jack", "queen", "king"
      10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    raise "Please implement the Blackjack.card_range method"
  end

  def self.first_turn(card1, card2, dealer_card)
    raise "Please implement the Blackjack.first_turn method"
  end
end

# 1. Calculate the value of any given card.
# You will receive two cards and will be able to see the face up card of the dealer. 
# All cards are represented using a string such as "ace", "king", "three", "two", etc. 
# The values of each card are:

# Commonly, aces can take the value of 1 or 11 but for simplicity we will assume that they can only 
# take the value of 11.

# Implement the method Blackjack.parse_card which takes a card as a string as an argument. 
# The method should return the value of the card as an integer.

# Blackjack.parse_card("ace")
# => 11