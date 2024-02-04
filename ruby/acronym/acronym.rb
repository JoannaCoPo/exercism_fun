class Acronym
  def self.abbreviate(full_name)
    full_name.scan(/\b\w/).join('').upcase
  end
end
