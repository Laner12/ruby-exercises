class Clock
  attr_reader :time
  def initialize
    @clock = [*1..12]
    @time = 6
    @count = 1
  end

  def wait
    if @time + @count <= 12
    @time += 1
  else
    @time = @time + @count - 12
    end
  end
end
