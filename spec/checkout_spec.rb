require "checkout"
require "pry"

RSpec.describe "Checkout" do
  let(:item1) { Item.new(product_code: "000") }
  let(:checkout1) { Checkout.new }
  let(:table) { Item.new(product_code: "002", name: "Little table", price: 4500) }

  context "#scan" do
    it "saves scanned items to a basket" do
      checkout1.scan(item1)
      expect(checkout1.basket.length).to eq(1)
    end
  end

  context "#total" do
    it "prints out the product code of an item in the basket" do
      checkout1.scan(item1)
      expect { checkout1.total }.to output("Basket: 000").to_stdout
    end

    it "the output can handle an empty basket" do
      expect { checkout1.total }.to output("Basket: Nothing!").to_stdout
    end

    it "the output can handle a different item in the basket" do
      checkout1.scan(table)
      expect { checkout1.total }.to output("Basket: 002").to_stdout
    end

    it "correctly adds a space between basket items" do
      checkout1.scan(table)
      checkout1.scan(table)
      expect { checkout1.total }.to output("Basket: 002, 002").to_stdout
    end
  end
end
