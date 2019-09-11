RSpec.describe 'Item' do
  it 'has a product code' do
    IT = Item.new(product_code: 002)
    expect(IT.product_code).to eq(002)
  end
end