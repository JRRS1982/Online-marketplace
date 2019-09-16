module PromotionCalculator
  
  def basket_value(basket = @basket)
    basket.map(&:price).compact.sum
  end

  def benefit_given
    output = (promotion.basket_discount.to_f / 100) * basket_value(@basket)
    output
  end
end
