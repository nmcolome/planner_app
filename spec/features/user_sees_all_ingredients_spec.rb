require 'rails_helper'

RSpec.describe 'User sees all ingredients' do
  it 'visits ingredient index page' do
    ingredients = create_list(:ingredient, 5)
    names = ingredients.pluck(:name)

    visit '/ingredients'

    expect(page).to have_content('All Ingredients')
    names.each { |name| expect(page).to have_content(name) }
  end
end
