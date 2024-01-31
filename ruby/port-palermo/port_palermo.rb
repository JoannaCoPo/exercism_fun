module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    idnt = city[0..3].upcase
    idnt.to_sym
  end

  def self.get_terminal(ship_identifier)
    string = ship_identifier.to_s
    string.start_with?('G','O') ? :A : :B
  end
end
