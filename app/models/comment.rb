# Define Comment Model
class Comment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :product

  # Validaciones
  validates :content, presence: true
end
