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
    sum = parse_card(card1) + parse_card(card2)
    parsed_dealer = parse_card(dealer_card)
    # binding.pry

    case 
    when card1 && card2 == "ace"
      "P"
    when sum == 21
      dealer_card < 10 ? "W" : "S"
    when 17..20.include?(sum)
      "S"
    when 12..16.include?(sum)
      dealer_card >= 7 ? "Hit" : "S"
    when sum <= 11
      "H"
    end
  end
end
