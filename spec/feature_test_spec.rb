
RSpec.describe 'CHECKOUT FEATURES: ' do
  context '#total' do
    it 'std out receieves the basket with one product code' do
      LTab = Item.new(product_code: '002', name: 'Little table', price: 4500)
      CO = Checkout.new
      CO.scan(LTab)
      expect { CO.total }.to output("Basket: 002").to_stdout
    end
  end
end
