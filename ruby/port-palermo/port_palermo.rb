module Port
  # TODO: define the 'IDENTIFIER' constant
  # system for keeping track of the ships that are currently in the harbor
  Port::IDENTIFIER = :PALE

  def self.get_identifier(city)
    idnt = city[0..3].upcase
    idnt.to_sym
  end

  def self.get_terminal(ship_identifier)
    raise 'Please implement the Port.get_terminal method'
  end
end
