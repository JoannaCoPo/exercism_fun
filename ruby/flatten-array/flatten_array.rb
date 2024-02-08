class FlattenArray
  def self.flatten(array)
    flat = []
    
    array.each do |el|
       next if el.nil?

      if el.class != Array
        flat << el
      else
        flat.concat(self.flatten(el))
      end
    end
    
    flat
  end
end