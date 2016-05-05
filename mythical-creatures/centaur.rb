class Centaur
  attr_reader :name,
              :breed
  attr_accessor :cranky,
                :standing,
                :laying,
                :counter
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @counter = 0
  end

  def shoot
    @counter += 1
    if @counter >= 3 || @laying
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @counter += 1
    if @counter >= 3 || @laying
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @counter < 3
      @cranky
    else @counter >= 3
      @cranky = true
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      @counter = 0 
    end
  end

  def lay_down
    @laying = true
    @standing = false
  end

  def stand_up
    @laying = false
    @standing = true
  end

  def laying?
    @laying
  end
end
