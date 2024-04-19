class Comment < ApplicationRecord
  validates :content, presence: true
  belongs_to :prototype
  belongs_to :user
end
