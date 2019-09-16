require_relative "basket_calculator"
require_relative "promotion_calculator"
require_relative "promotion"
require_relative "item"

class Checkout
  include BasketCalculator
  include PromotionCalculator
  attr_reader :basket, :promotion

  def initialize(promotion = Promotion.new)
    @promotion = promotion
    @basket = []
  end

  def scan(item_param)
    @basket.push(item_param)
  end

  def total(a_basket = @basket, promotion = @promotion)
# calculate benefit from a promotion
    benefit = benefit_given
#  print out the shopping basket
    list_items(a_basket)
# pass basket and benefit to module to print the price
    calculate_price(a_basket, benefit)
  end
end
