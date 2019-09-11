class Checkout
  attr_reader :basket

  def initialize
    @basket = []
  end

  def scan(item_param)
    @basket.push(item_param)
  end

  def total(to_calculate = @basket)
    basket_helper = 'Basket: '

    if to_calculate.length == 0
      print 'Basket: Nothing!'
    else
      to_calculate.each { |x|
        "#{basket_helper += x.product_code}"
      }
      print basket_helper
    end
  end
end