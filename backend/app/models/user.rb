class User < ApplicationRecord
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }
  has_many :goals
  has_many :love_bubbles
  has_secure_password
end
