class Comment < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :description, presence: true, length: { maximum: 200 }

  belongs_to :post
  belongs_to :user
end
