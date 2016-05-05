class Money
  attr_reader :amount
  def initialize
    @amount = 0
  end

  def earn(earnings)
    @amount += earnings
  end

  def spend(spent)
    if @amount > 0
      @amount -= spent
    else
     "You can't spend what you don't have"
    end
  end
end
