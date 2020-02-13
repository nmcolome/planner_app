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
end
