# Define Cart model
class Cart < ApplicationRecord
  # Associations
  belongs_to :user

  has_many :cart_items, dependent: :destroy

  # Validaciones
  validates :user_id, presence: true
end
