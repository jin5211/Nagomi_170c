class Comment < ApplicationRecord
  validate :content, presence: true
  belongs_to :prototype
end
