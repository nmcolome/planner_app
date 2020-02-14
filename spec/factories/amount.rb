FactoryBot.define do
  factory :amount do
    recipe
    ingredient
    amount { 1.5 }
    unit { 'cup' }
  end
end
