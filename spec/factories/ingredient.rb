FactoryBot.define do
  factory :ingredient do
    name { Faker::Food.ingredient }
    category { "vegetables" }
  end
end
