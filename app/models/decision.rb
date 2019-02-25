class Decision < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes

  validates :title, presence: true
  validates :category, presence: true
  validates :council_date, presence: true
  validates :result, exclusion: { in: [nil] }
end
