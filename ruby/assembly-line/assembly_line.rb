class AssemblyLine
  CARS_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @speed * CARS_PER_HOUR * success_rate
  end

  def success_rate
    case @speed 
    when 1..4
      1
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end

  def working_items_per_minute
    raise 'Please implement the AssemblyLine#working_items_per_minute method'
  end
end

# The assembly line's speed can range from 0 (off) to 10 (maximum).

# At its slowest speed (1), 221 cars are produced each hour. The production increases linearly with the speed. So with the speed set to 4, it should produce 4 * 221 = 884 cars per hour. However, higher speeds increase the likelihood that faulty cars are produced, which then have to be discarded. The following table shows how speed influences the success rate:

# 1 to 4: 100% success rate.
# 5 to 8: 90% success rate.
# 9: 80% success rate.
# 10: 77% success rate.
