class Checkout
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(item_param)
    @basket.push(item_param)
  end

end