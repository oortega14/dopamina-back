# Define UserDetail Model
class UserDetail < ApplicationRecord
  # Associations
  belongs_to :user

  # Validaciones
  validates :first_name, :last_name, :phone, :gender, :birth_date, presence: true
end
