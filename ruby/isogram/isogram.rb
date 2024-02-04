class Isogram
  def self.isogram?(word)
    repeats = {}

    word.each_char do |c|
      next unless c.match?(/[a-zA-Z]/)
      return false if repeats[c]  
      repeats[c] = true 
    end
    true
  end
end