class Promotion
  attr_reader :price_over, :basket_discount

  def initialize(price_over: 0, basket_discount: 0)
    @price_over = price_over
    @basket_discount = basket_discount
  end
end
