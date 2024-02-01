module Blackjack
  VALUES = [
    "joker",
    "placeholder",
    "two", 
    "three", 
    "four", 
    "five", 
    "six", 
    "seven", 
    "eight", 
    "nine", 
    "ten", 
    "ace"
  ]

  def self.parse_card(card)
    VALUES.index(card) || 10
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
    sum = parse_card(card1) + parse_card(card2)

    case 
    when card1 && card2 == "ace"
      "P"
    when sum == 21
      parse_card(dealer_card) < 10 ? "W" : "S"
    when (17..20).include?(sum)
      "S"
    when (12..16).include?(sum)
      parse_card(dealer_card) >= 7 ? "H" : "S"
    when sum <= 11
      "H"
    end
  end
end
