RSpec.describe "BasketCalcalator" do
  let(:checkout) { Checkout.new }
  let(:table) { Item.new(product_code: "002", name: "Little table", price: 4500) }


  context "#price_of_basket" do
    it "has a default price of zero" do
      expect(checkout.price_of_basket([])).to eq(0)
    end
  end
end