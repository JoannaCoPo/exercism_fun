class FlattenArray
  def initialize
    @results = []
  end
  
  def self.flatten(nums)
    nums.each do |n|
      if n.class != Array
        @results << n
      else
        flatty(n)
      end
    end
debug
    @results
  end
end