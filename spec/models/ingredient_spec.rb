require 'rails_helper'

RSpec.describe Ingredient do
  describe 'attributes' do
    it { should respond_to :name }
    it { should respond_to :type }
    it { should respond_to :friendly }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :type }
  end
end
