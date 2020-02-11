FactoryBot.define do
  factory :ingredient do
    name { Faker::Food.ingredient }
    type { 'vegetables' }
  end
end
