require 'rails_helper'

RSpec.describe Ingredient do
  describe 'attributes' do
    it { should respond_to :name }
    it { should respond_to :category }
    it { should respond_to :status }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :category }
  end

  describe 'enum' do
    it { should define_enum_for(:category).with_values([:dairy_and_alternatives, :fruits, :vegetables, :beans, :nuts, :grains, :meats_and_poultry, :fish_and_seafood, :spices]) }
    it { should define_enum_for(:status).with_values([:unknown, :friendly, :unfriendly]) }
  end

  describe 'default attributes' do
    it 'status is unknown by default' do
      ingredient = create(:ingredient)
      expect(ingredient.status).to eq("unknown")
    end
  end
end
