class Hobbit
  attr_reader :name,
              :age
  def initialize(name, disposition = nil)
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @short = true
  end

  def disposition
    if @name == "Samwise"
      @disposition = "homebody"
    elsif @name == "Frodo"
      @disposition = "adventurous"
    end
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age < 33
      @adult = false
    else @age >= 33
      @adult = true
    end
  end

  def old?
    if @age >= 101
      old = true
    end
  end

  def has_ring?
    if @name == "Frodo"
      return true
    else
      return false
    end
  end

  def is_short?
    @short
  end
end
