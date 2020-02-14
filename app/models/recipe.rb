class Recipe < ApplicationRecord
  has_many :amounts
  has_many :ingredients, through: :amounts

  validates_presence_of :title, :instructions, :category
  enum category: [:breakfasts, :soups, :salads, :sides, :sauces_and_seasonings, :salad_dressings, :snacks, :main_courses, :desserts]
end
