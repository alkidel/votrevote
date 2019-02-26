class Decision < ApplicationRecord
  belongs_to :town
  has_many :votes
  has_many :users, through: :votes

  mount_uploader :photo, PhotoUploader

  enum result: %i[pending accepted rejected deferred]

  validates :title, presence: true
  validates :category, presence: true
  validates :council_date, presence: true
  validates :result, presence: true
end
