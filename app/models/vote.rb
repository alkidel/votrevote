class Vote < ApplicationRecord
  belongs_to :users
  belongs_to :decision, dependent: :destroy

  validates :user, presence: true
  validates :decision, presence: true
  validates :result, presence: true
end
