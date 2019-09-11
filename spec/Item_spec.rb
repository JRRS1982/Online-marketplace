require './lib/item.rb'

RSpec.describe 'Item' do
  it 'has a product code' do
    LTable = Item.new(product_code: 002)
    expect(LTable.product_code).to eq(002)
  end
end