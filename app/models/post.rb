class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :description, presence: true, length: { maximum: 200 }

  belongs_to :user
  has_many :comments
end
