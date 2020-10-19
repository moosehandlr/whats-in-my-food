class FoodsService

  def food_results(food)
    response = conn.get("foods/search?api_key=#{ENV["FOOD_DATA_API"]}&query=#{food}")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:foods].first(10)
  end

private

  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers["api_key"] = ENV["FOOD_DATA_API"]
      faraday.adapter Faraday.default_adapter
    end
  end
end
