require 'rails_helper'

RSpec.describe 'User sees one ingredient' do
  describe 'links from ingredients list' do
    it "sees ingredient's details" do
      food = create(:ingredient)

      visit ingredients_path

      click_on food.name

      expect(current_path).to eq(ingredient_path(food))
      expect(page).to have_content(food.name)
      expect(page).to have_content(food.category)
      expect(page).to have_content(food.status)
    end
  end
end
