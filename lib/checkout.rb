require "basket_calculator"

class Checkout
  include BasketCalculator
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(item_param)
    @basket.push(item_param)
  end

  def total(a_basket = @basket)
    list_items(a_basket)
    calculate_price(a_basket)
  end
end
