class Wizard
  attr_reader :name,
              :rested
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    if @count < 3
      @rested
    else @count >= 3
      @rested = false
    end
  end

  def cast(casted)
    @count += 1
    "#{casted}"
  end
end
