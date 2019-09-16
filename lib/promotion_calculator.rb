# frozen_string_literal: true
require 'pry'

module PromotionCalculator
  def basket_value(basket = @basket)
    basket.map(&:price).compact.sum
  end

  def benefit_given(basket = @basket, promotion = @promotion)
    output = 0.00
    all_discounts = 0.00
    if basket_value(basket) >= (promotion.price_over * 100)
      output = (promotion.basket_discount.to_f / 100) * basket_value(@basket)
    end
    all_discounts = multi_item_discount(basket, promotion)
    all_discounts += output
    all_discounts
  end

  private

  def multi_item_discount(basket = @basket, promotion = @promotion)
    if promotion.product_quantity == 0
      0
    else
      count = 0
      basket_item_price = 0
      price_diff = 0
      basket.each do | item |
        if item.product_code == promotion.product_code
          count += 1
          basket_item_price = item.price
        end
      end
      price_diff = basket_item_price - promotion.new_price
      output = price_diff * count
      return output
    end
  end
end
