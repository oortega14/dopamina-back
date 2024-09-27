# Define Category model
class Category < ApplicationRecord
  # Associations
  has_and_belongs_to_many :products

  # Validaciones
  validates :name, presence: true, uniqueness: true
end
