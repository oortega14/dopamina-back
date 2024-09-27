# Define Rating Model
class Rating < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :product

  # Validaciones
  validates :value, presence: true, inclusion: { in: 1..5 }
end
