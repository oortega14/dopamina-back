# Define User Model
class User < ApplicationRecord
  # Associations
  has_one :user_detail, dependent: :destroy

  has_many :addresses, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_one :cart, dependent: :destroy
  has_many :orders, dependent: :destroy
end
