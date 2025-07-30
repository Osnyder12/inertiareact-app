class Advisor < ApplicationRecord
  validates :name, presence: true
  validates :title, length: { maximum: 100 }

  has_many :posts
end
