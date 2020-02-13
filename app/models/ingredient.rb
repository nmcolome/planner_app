class Ingredient < ApplicationRecord
  validates_presence_of :name, :category
  enum category: [:dairy_and_alternatives, :fruits, :vegetables, :beans, :nuts, :grains, :meats_and_poultry, :fish_and_seafood, :spices]
  enum status: [:unknown, :friendly, :unfriendly]
end
