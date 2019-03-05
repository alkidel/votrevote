class Comment < ApplicationRecord
  belongs_to :decision
  belongs_to :user
  validates :user, presence: true
  validates :decision, presence: true
end
