require 'item.rb'

RSpec.describe 'Item' do
  let(:item1) { Item.new(product_code: 002) }

  it 'has a product code' do
    expect(item1.product_code).to eq(002)
  end
end