class Pirate
  attr_reader :name,
              :job,
              :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @count = 0
    @booty = 0
  end

  def cursed?
    if @count < 3
      @cursed
    else @count >= 3
      @cursed = true
    end
  end

  def commit_heinous_act
    @count += 1
  end

  def rob_ship
    @booty += 100
  end
end
