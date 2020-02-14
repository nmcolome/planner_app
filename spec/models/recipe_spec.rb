require 'rails_helper'

RSpec.describe Recipe do
  describe 'attributes' do
    it { should respond_to :title }
    it { should respond_to :instructions }
    it { should respond_to :servings }
    it { should respond_to :category }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :instructions }
    it { should validate_presence_of :category }
  end

  describe 'enum' do
    it { should define_enum_for(:category).with_values([:breakfasts, :soups, :salads, :sides, :sauces_and_seasonings, :salad_dressings, :snacks, :main_courses, :desserts]) }
  end

  describe 'relationships' do
    it { should have_many :amounts }
    it { should have_many(:ingredients).through(:amounts) }
  end
end
