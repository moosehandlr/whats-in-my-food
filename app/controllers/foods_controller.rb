class FoodsController < ApplicationController
  def index
    food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.headers["api_key"] = ENV["FOOD_DATA_API"]
    end

    response = conn.get("foods/search?api_key=#{ENV["FOOD_DATA_API"]}&query=#{food}")
    json = JSON.parse(response.body, symbolize_names: true)

    @foods = json[:foods].first(10)
  end
end
