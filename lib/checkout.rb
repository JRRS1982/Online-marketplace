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
  end

  private

  def basket_calculator(a_basket = @basket)
    if a_basket.length == 0
      print "Basket: Nothing!"
    elsif a_basket.length == 1
      print "Basket: #{a_basket[0].product_code}"
    else
      print "Basket: "
      print a_basket[0].product_code
      a_basket.drop(1).select.map { |x|
        print ", #{x.product_code}"
      }
    end
  end
end
