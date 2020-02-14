require 'rails_helper'

RSpec.describe 'User sees a recipe' do
  describe 'links from recipe index' do
    it 'sees all the information related to a recipe' do
      amount = create(:amount)
      recipe = amount.recipe
      ingredient = amount.ingredient

      visit recipes_path

      click_on recipe.title

      expect(current_path).to eq(recipe_path(recipe))
      expect(page).to have_content(recipe.title)
      expect(page).to have_content(recipe.servings)
      expect(page).to have_content(amount.amount)
      expect(page).to have_content(amount.unit)
      expect(page).to have_content(ingredient.name)
      expect(page).to have_content(ingredient.status)
      expect(page).to have_content(recipe.instructions)
    end
  end
end
