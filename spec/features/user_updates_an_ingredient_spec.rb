require 'rails_helper'

RSpec.describe 'User updates an ingredient' do
  describe 'links from ingredient list' do
    describe 'fills out new information' do
      it 'sees updated show page' do
        food = create(:ingredient)

        visit ingredients_path

        click_on 'Update'

        expect(page).to have_field('ingredient[name]', with: food.name)
        expect(page).to have_field('ingredient[category]', with: Ingredient.categories[food.category])
        expect(page).to have_field('ingredient[status]', with: Ingredient.statuses[food.status])
        fill_in 'ingredient[name]', with: 'New name'
        select 'grains', from: 'ingredient[category]'
        select 'unfriendly', from: 'ingredient[status]'
        click_on 'Update'

        expect(current_path).to eq(ingredient_path(food))
        expect(page).to have_content('New name')
        expect(page).to have_content('grains')
        expect(page).to have_content('unfriendly')
      end
    end
  end
end
