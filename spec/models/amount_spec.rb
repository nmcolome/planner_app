require 'rails_helper'

RSpec.describe Amount do
  describe 'attributes' do
    it { should respond_to :amount } #integer
    it { should respond_to :unit }
    it { should respond_to :comment } #string
    it { should respond_to :optional } #boolean
  end

  describe 'validations' do
    it { should validate_presence_of :amount }
    it { should validate_presence_of :unit }
  end

  describe 'enums' do
    it { should define_enum_for(:unit).with_values([:tsp, :tbsp, :cup, :ounce, :quart, :gallon, :lb, :can, :large, :small, :medium]) }
  end

  describe 'default attributes' do
    it 'optional is false by default' do
      amount = create(:amount)
      expect(amount.optional).to eq(false)
    end
  end

  describe 'relationships' do
    it { should belong_to :recipe }
    it { should belong_to :ingredient }
  end
end
