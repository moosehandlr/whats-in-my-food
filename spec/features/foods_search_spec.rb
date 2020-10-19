# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
require 'rails_helper'

RSpec.describe 'Foods Search' do
  it "I can search for foods by keyword" do
    visit '/'

    fill_in :q, with: 'sweet potatoes'

    click_on 'Search'

    expect(current_path).to eq("/foods")

    expect(page).to have_css('.food', count: 10)

    within(first(".food")) do
      expect(page).to have_css(".gtin")
      expect(page).to have_css(".description")
      expect(page).to have_css(".brand_owner")
      expect(page).to have_css(".ingredients")
    end
  end
end
