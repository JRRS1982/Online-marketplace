RSpec.describe "CHECKOUT FEATURES: " do
  let(:checkout1) { Checkout.new }
  let(:table) {
    Item.new(
      product_code: "002",
      name: "Little table",
      price: 4500
    )
  }
  let(:light) {
    Item.new(
      product_code: "003",
      name: "Funky Light",
      price: 1995
    )
  }

  context "#total" do
    it "std out receieves the basket with one product code" do
      checkout1.scan(table)
      expect { checkout1.total }.to output("Basket: 002").to_stdout
    end

    xit "std out receives the total price expected of several items" do
      checkout1.scan(table)
      checkout1.scan(light)
      checkout1.scan(table)
      expect { checkout1.total }.to output('Basket: 002, 003, 002 \n Total price expected: £109.95').to_stdout
    end
  end
end
