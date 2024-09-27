# Define CartItem Model
class CartItem < ApplicationRecord
  # Associations
  belongs_to :cart
  belongs_to :product

  # Validaciones
  validates :quantity, :product_id, presence: true
end
