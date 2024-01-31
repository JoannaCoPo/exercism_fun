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
    sum = parse_card(card1) + parse_card(card2)
    result = range_value.find { |key, value| value.include?(sum) }
    return result[0].to_s if result
  end

  def self.range_value
    {
      low:	4..11,
      mid:	12..16,
      high:	17..20,
      blackjack:	21..21
    }
  end

  def self.first_turn(card1, card2, dealer_card)
    raise "Please implement the Blackjack.first_turn method"
  end
end

# The player score has to be categorized into ranges of values. 
# Player scores are computed by adding up the values of the two player cards. 
# The ranges that are used are:

# range	value
# low	[4, 11]
# mid	[12, 16]
# high	[17, 20]
# blackjack	[21]
# Implement the method Blackjack.card_range which takes two cards as strings as arguments. 
# The method should return the name of the range of values the two cards fall into.

# Blackjack.card_range("ten", "king")
# => "high"