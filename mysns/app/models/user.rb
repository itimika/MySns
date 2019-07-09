class User < ApplicationRecord
  has_secure_password
  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :posts
  has_many :followers
end
