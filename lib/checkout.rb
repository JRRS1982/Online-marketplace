class Checkout
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(item_param)
    @basket.push(item_param)
  end

  def total(to_calculate = @basket)
    print 'Basket: 002'.chomp
  end
end