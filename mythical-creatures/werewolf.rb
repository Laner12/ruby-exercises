class Werewolf
  attr_reader :name,
              :location
  attr_accessor :human,
                :wolf,
                :hungry
  def initialize(name, location = nil)
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end

  def change!
  human_state = @human
  wolf_state = @wolf
  @human = wolf_state
  @wolf = human_state
  @hungry = true
  end

  def consumes_a_victim
    if @wolf = true
      @hungry = false
    else
    end
  end
end
