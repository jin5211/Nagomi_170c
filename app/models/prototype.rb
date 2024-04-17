class Prototype < ApplicationRecord
  # belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
end
