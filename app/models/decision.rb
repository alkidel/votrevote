class Decision < ApplicationRecord
  belongs_to :town
  has_many :votes
  has_many :users, through: :votes

end
