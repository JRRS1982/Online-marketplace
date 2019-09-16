module PromotionCalculator
  attr_reader :a_basket

  def initialize(promotion)
    @a_basket = []
  end

  def conditional
    a_basket.map(&:price).compact.sum
  end

  def benefit_given
    0
  end
end