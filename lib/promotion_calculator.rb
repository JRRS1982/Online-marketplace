module PromotionCalculator
  
  def basket_value(basket = @basket)
    basket.map(&:price).compact.sum
  end

  def benefit_given(basket = @basket, promotion = @promotion)
    output = 0
    if basket_value(basket) >= (promotion.price_over * 100)
      output = (promotion.basket_discount.to_f / 100) * basket_value(@basket)
    end
    output
  end
end
