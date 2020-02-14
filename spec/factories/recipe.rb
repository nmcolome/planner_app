FactoryBot.define do
  factory :recipe do
    title { Faker::Food.dish }
    instructions { Faker::Food.description }
    servings { 2 }
    category { "main_courses" }
  end
end
