class Fixnum
  # Rounds a number to the nearest 'n'
  # For rounding minutes to the nearest hour, half hour, quarter hour, etc.
  # Example:
  #   60.round_to_nearest(15) # => 60
  #   70.round_to_nearest(15) # => 75
  def round_to_nearest(n)
    num = (self / n) * n 
    self % n >= (n.to_f / 2) ? num + n : num
  end

  def to_duration_string
    "%d:%0.2d" % [self/60, self%60]
  end
end

