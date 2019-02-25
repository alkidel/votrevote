class Vote < ApplicationRecord
  belongs_to :users
  belongs_to :decision, dependent: :destroy

  enum result: %i[accepted pending rejected blank_vote]

  validates :user, presence: true
  validates :decision, presence: true
  validates :result, presence: true
end
