class Vote < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :decision


  enum result: %i[pending accepted rejected blank_vote]

  validates :user, presence: true
  validates :decision, presence: true
  validates :result, presence: true

  scope :of, -> (user) { where(user: user) }
  scope :with_results, -> { where.not(result: 0) }

  def category
    decision.category
  end
end
