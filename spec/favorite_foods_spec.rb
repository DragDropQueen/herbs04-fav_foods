require 'spec_helper'
require_relative '../favorite_foods'

Capybara.app = FavoriteFoods

feature "User can manage a list of favorite foods" do

  before do
    DB[:fav_food].delete
  end

  scenario "User can add favorite food to list" do
    visit '/'
    food_name = "pizza"
    expect(page).to have_no_content(food_name)
    fill_in "My Favorite Food", with: food_name
    click_on "Add Food"
    expect(page).to have_content(food_name)
  end

end
