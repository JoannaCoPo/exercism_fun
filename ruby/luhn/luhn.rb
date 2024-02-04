class Luhn
  def self.valid?(str)
    str = str.split.join
    return false if str.length <= 1 || str.match?(/\D/)
    reversed = str.chars.map(&:to_i).reverse

    reversed.each_with_index do |el, index|
      next if index.even?
      
      doubled = el * 2
      reversed[index] = doubled > 9 ? doubled - 9 : doubled 

    end
    (reversed.sum % 10) == 0
  end
end
