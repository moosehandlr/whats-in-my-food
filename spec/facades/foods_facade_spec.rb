require 'rails_helper'

RSpec.describe 'FoodsFacade' do
  it '#foods' do
    search = FoodsFacade.new('sweet potatoes')
    actual = search.foods
    expect(actual).to be_an(Array)
  end
end
