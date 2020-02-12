require 'rails_helper'

RSpec.describe 'User updates an ingredient' do
  describe 'links from ingredient list' do
    describe 'fills out new information' do
      it 'sees updated show page' do
        food = create(:ingredient)

        visit ingredients_path

        click_on 'Update'

        expect(page).to have_content(food.name)
        expect(page).to have_content(food.category)
        expect(page).to have_content(food.status)
        fill_in 'ingredient[:name]', with: 'New name'
        select 'Grains', from: 'ingredient[:category]'
        select 'Unfriendly', from: 'ingredient[:status]'
        click_on 'Update'

        expect(current_path).to eq(ingredient_path(food))
        expect(page).to have_content('New name')
        expect(page).to have_content('Grains')
        expect(page).to have_content('Unfriendly')
      end
    end
  end
end
