require "pry"
class Medusa
  attr_reader :name
  attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count >= 3
    @statues.shift until @statues.count == 2 && @statues << victim
  else @statues.count < 3
      @statues << victim
      victim.get_stoned
    end
  end
end

class Person

  attr_reader :name
  attr_accessor :stoned,
                :get_stoned
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def get_stoned
    @stoned = true
  end

  def unstoned
      @stoned
  end
end
