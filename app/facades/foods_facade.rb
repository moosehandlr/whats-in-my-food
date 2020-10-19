class FoodsFacade
  def initialize(food)
    @food = food
    @food_service ||= FoodsService.new
  end

  def foods
    @food_service.food_results(@food)
  end
end
