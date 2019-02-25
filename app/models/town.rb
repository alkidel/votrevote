class Town < ApplicationRecord
  belongs_to :user
  has_many :decisions

  validates :name, presence: true
end
