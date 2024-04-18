class Comment < ApplicationRecord
  validate :content, presence: true
  belongs_to :prototype
  belongs_to :user
end
