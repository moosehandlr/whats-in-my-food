class Food
  attr_reader :description, :gtin, :brand_owner, :ingredients

  def initialize(food_info)
    @description = food_info[:description]
    @gtin = food_info[:gtinUpc]
    @brand_owner = food_info[:brandOwner]
    @ingredients = food_info[:ingredients]
  end
end
