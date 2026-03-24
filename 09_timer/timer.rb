class Timer
  # 1. Constants
  # 2. Class-level macros (attr_*, include, extend, etc.)
  # 3. Class Methods
  # 4. Public instance methods
  # 5. Protected Methods
  # 6. Private Methods
  attr_reader :seconds

  def initialize(seconds = 0)
    self.seconds = seconds
  end

  def time_string
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    secs = seconds % 60
    format("%02d:%02d:%02d", hours, minutes, secs)
  end

  def padded(seconds)
    padded = seconds.to_s.rjust(2, '0')
    padded
  end

  private attr_writer :seconds
end