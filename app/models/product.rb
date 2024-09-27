# Define Product Model
class Product < ApplicationRecord
  # Associations
  has_and_belongs_to_many :categories

  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :order_items
  has_many :orders, through: :order_items

  # Validaciones
  validates :name, :description, :price, :stock, presence: true
end
