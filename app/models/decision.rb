class Decision < ApplicationRecord
  # belongs_to :town
  has_many :votes, dependent: :destroy
  has_many :users, through: :votes

  mount_uploader :photo, PhotoUploader

  # before_destroy :delete_photo

  enum result: %i[pending accepted rejected deferred]

  validates :title, presence: true
  validates :category, presence: true
  validates :council_date, presence: true
  validates :result, presence: true

  def delete_photo
    photo.file.delete
  end
end
