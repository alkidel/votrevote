class Decision < ApplicationRecord
  belongs_to :town
  has_many :votes
  has_many :users, through: :votes

  enum result: %i[accepted pending rejected deferred]

  validates :title, presence: true
  validates :category, presence: true
  validates :council_date, presence: true
  validates :result, presence: true
end
