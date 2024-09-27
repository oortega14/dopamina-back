# Define Categories Product model
class CategoriesProduct < ApplicationRecord
  # Associations
  belongs_to :category
  belongs_to :product
end
