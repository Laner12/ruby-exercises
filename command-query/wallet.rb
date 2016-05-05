class Wallet
  attr_reader :cents
  def initialize
    @cents = 0
    @wallet = {0 => 0, :penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100}
  end

  def <<(cents_key)
    @cents = @cents + @wallet[cents_key]
  end

  def take(coin, coin2 = 0)
    if @wallet[coin] > @cents
      @cents
    else
      @cents = @cents - @wallet[coin] - @wallet[coin2]
    end
  end
end
