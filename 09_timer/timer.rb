class Timer
  attr_accessor :seconds
  # if store something -> class field
  # if not store something -> method

  def time_string # time_string doesn't store anything -> method
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    secs = seconds % 60
    format("%02d:%02d:%02d", hours, minutes, secs)
  end

  def initialize(seconds = 0)
    # seconds stores a value -> class field
    self.seconds = seconds
  end
end