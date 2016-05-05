class Item
  attr_reader :name,
              :price,
              :discount,
              :percent
  def initialize(name, price)
    @name = name
    @price = price[:price]
    @discount = price[:discount]
    @percent = @discount / @price.to_f
  end
end
