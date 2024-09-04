class User < ApplicationRecord
  has_secure_password  # Requires the bcrypt gem for password handling
  has_many :pets, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
