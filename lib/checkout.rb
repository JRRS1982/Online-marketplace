require_relative "basket_calculator"
require_relative "promotion"
require_relative "item"

class Checkout
  include BasketCalculator
  attr_reader :basket, :promotion

  def initialize(promotion = Promotion.new)
    @promotion = promotion
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
