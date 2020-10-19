require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attrs = {
      description: "Sweet Potatoe Casserole",
      gtinUpc: "070560952345",
      brandOwner: "Food Network",
      ingredients: "Sweet Potatoe"
    }

    food = Food.new(attrs)

    expect(food).to be_a Food
    expect(food.description).to eq(attrs[:description])
    expect(food.gtin).to eq(attrs[:gtinUpc])
    expect(food.brand_owner).to eq(attrs[:brandOwner])
    expect(food.ingredients).to eq(attrs[:ingredients])
  end
end
