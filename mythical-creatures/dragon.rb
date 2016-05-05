class Dragon
  attr_reader :name,
              :color,
              :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @count = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @count += 1
    if @count < 3
      @hungry
    else
      @hungry = false
    end
  end
end
