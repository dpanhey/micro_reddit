class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..16 }

  has_many :posts
  has_many :comments
end
