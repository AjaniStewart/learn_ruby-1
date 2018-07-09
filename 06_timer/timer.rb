class Timer
  #write your code here

  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def padded num
    if num < 10
      return "0" << num.to_s
    else
      return num.to_s
    end
  end

  def time_string
    timeLeft = @seconds
    h = timeLeft / 3600
    timeLeft = timeLeft % 3600
    m = timeLeft / 60
    timeLeft = timeLeft % 60
    padded(h) << ":" << padded(m) << ":" << padded(timeLeft)
  end
end
