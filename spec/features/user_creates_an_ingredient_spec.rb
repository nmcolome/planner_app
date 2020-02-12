require 'rails_helper'

RSpec.describe 'User creates an ingredient' do
  describe 'links from ingredient list' do
    describe 'fills out information' do
      it 'sees new item in list' do
        visit ingredients_path

        click_on 'Add new ingredient'

        fill_in 'ingredient[name]', with: 'Bread'
        select 'grains', from: 'ingredient[category]'
        click_on 'Create'

        expect(current_path).to eq(ingredients_path)
        expect(page).to have_content('Bread')
      end
    end
  end
end
