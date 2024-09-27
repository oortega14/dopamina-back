# Define Address Model
class Address < ApplicationRecord
  # Associations
  belongs_to :user

  # Validaciones
  validates :content, presence: true
end
