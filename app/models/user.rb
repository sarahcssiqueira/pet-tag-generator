class User < ApplicationRecord
  has_secure_password  # Requires the bcrypt gem for password handling
  enum role: { common_user: 0, admin: 1 }
  has_many :pets, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
