require 'rails_helper'

RSpec.describe 'User sees all ingredients' do
  it 'visits ingredient index page' do
    visit '/ingredients'

    expect(page).to have_content('All Ingredients')
  end
end
