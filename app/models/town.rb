class Town < ApplicationRecord
  belongs_to :user, optional: true
  has_many :decisions
end
