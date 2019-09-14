require 'pry'

module BasketCalculator
  def list_items(a_basket)
    if a_basket.length == 0
      puts "Basket: Nothing!"
    elsif a_basket.length == 1
      puts "Basket: #{a_basket[0].product_code}"
    elsif a_basket.length > 1
      print "Basket: "
      print a_basket[0].product_code
      a_basket.drop(1).select.map { |x|
        print ", #{x.product_code}"
      }
      puts ''
    end
  end

  def calculate_price(a_basket)
    total = 0
    if a_basket.length == 0
      print "Total price expected: £0.00"
    elsif a_basket.length == 1
      total += a_basket[0].price
      currency = number_to_currency(total)
      print "Total price expected: #{currency}"
    else
      total = 0
      a_basket.each { |x|
        total += x.price.to_i
      }
      print "Basket: "
      output = total / 100
      puts number_to_currency(output)
    end
  end

  private 
  
  def number_to_currency(number)
    output = (number / 100)
    "£#{output}"
  end
end