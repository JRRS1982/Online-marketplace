require './lib/checkout'

RSpec.describe 'Checkout' do
  context '#scan' do
    it 'saves scanned items to a basket' do
      CO = Checkout.new
      IT = Item.new(product_code: '002')
      CO.scan(IT)
      expect(CO.basket.length).to eq(1)
    end
  end

  context '#total' do
    it 'prints out the product code of an item in the basket' do
      CO = Checkout.new
      IT = Item.new(product_code: '002')
      CO.scan(IT)
      expect { CO.total }.to output('Basket: 002').to_stdout
    end
  end
end