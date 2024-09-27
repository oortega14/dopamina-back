# Define Order Model
class Order < ApplicationRecord
  # Associations
  belongs_to :user

  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  # Validaciones
  validates :status, presence: true
end
