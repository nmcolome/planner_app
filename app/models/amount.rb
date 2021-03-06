class Amount < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates_presence_of :amount, :unit, :unless => :comment?
  enum unit: [:tsp, :tbsp, :cup, :ounce, :quart, :gallon, :lb, :can, :large, :small, :medium, :clove, :inch, :whole]
end