require "checkout"
require "item"

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
      expect { checkout1.total }.to output("Basket: 002\nTotal price expected: £45.00\n").to_stdout
    end

    it "std_out receives the total price expected of several items" do
      checkout1.scan(table)
      checkout1.scan(light)
      checkout1.scan(table)
      expect { checkout1.total }.to output("Basket: 002, 003, 002\nTotal price expected: £109.95\n").to_stdout
    end
  end

  context "#promotion" do
    context "#ten_percent_over_60" do

    end
  end
end
