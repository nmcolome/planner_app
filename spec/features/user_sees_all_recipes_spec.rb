require 'rails_helper'

RSpec.describe 'User sees all of recipes' do
  it 'sees a list of recipes titles' do
    recipes = create_list(:recipe, 5)
    titles = recipes.pluck(:title)

    visit recipes_path

    expect(page).to have_content('All Recipes')
    titles.each { |title| expect(page).to have_content(title) }
  end
end
