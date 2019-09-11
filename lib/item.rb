class Item
  def initialize(product_code)
    @product_code = product_code
  end

  def product_code
    @product_code.values[0]
  end
end
