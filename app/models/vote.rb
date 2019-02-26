class Vote < ApplicationRecord
  belongs_to :user
  # belongs_to :decision, dependent: :destroy

  enum result: %i[pending accepted rejected blank_vote]

  validates :user, presence: true
  validates :decision, presence: true
  validates :result, presence: true
end
