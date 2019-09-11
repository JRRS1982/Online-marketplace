
RSpec.describe 'CHECKOUT FEATURES: ' do
  let(:checkout1) { Checkout.new }
  let(:table) { Item.new(product_code: '002', name: 'Little table', price: 4500) }

  context '#total' do
    it 'std out receieves the basket with one product code' do
      checkout1.scan(table)
      expect { checkout1.total }.to output("Basket: 002").to_stdout
    end
  end
end
