# Define OrderItem Model
class OrderItem < ApplicationRecord
  # Associations
  belongs_to :order
  belongs_to :product

  # Validaciones
  validates :quantity, :product_id, presence: true
end
