class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.new(params[:q]).foods
  end
end
