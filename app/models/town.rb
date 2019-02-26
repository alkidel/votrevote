class Town < ApplicationRecord
  # belongs_to :user, optional: true
  has_many :decisions

  validates :name, presence: true
end
