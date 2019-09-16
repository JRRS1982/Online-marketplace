require "promotion"
require "pry"

RSpec.describe "Promotion" do
  let(:checkout) { Checkout.new }
  let(:promotion) { Promotion.new }

  it "has a default benefit of zero" do
    expect(promotion.benefit_given).to eq(0)
  end

  it "has a default benefit when initialized with the checkout" do
    expect(checkout.promotion.benefit_given).to eq(0)
  end
end
