class FoodsFacade
  def initialize(food)
    @food = food
    @food_service ||= FoodsService.new
  end

  def foods
    json = @food_service.food_results(@food)
    json.map do |food_info|
      Food.new(food_info)
    end
  end
end
