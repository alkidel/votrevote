class Decision < ApplicationRecord
  # belongs_to :town
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :users, through: :votes

  mount_uploader :photo, PhotoUploader

  # before_destroy :delete_photo

  enum result: %i[attente accepté refusé reporté]
  enum category: %i[Environnement Finance Education Urbanisme Culture Logement]

  validates :title, presence: true
  validates :category, presence: true
  validates :council_date, presence: true
  validates :result, presence: true

  scope :future, -> { where("council_date >= ?", DateTime.now) }
  scope :past, -> { where("council_date < ?", DateTime.now) }
  scope :category, ->(category) { where(category: category) }
  scope :council_date, -> { where(council_date: council_date) }

  after_create :add_vote_to_users

  def future?
    council_date > Date.today
  end

  def past?
    !future?
  end

  def self.dates
    dates = []
    Decision.past.group(:council_date).order(council_date: :DESC).count.each do |council|
      dates << council[0]
    end
    dates
  end

  def delete_photo
    photo.file.delete
  end

  def votes_count
    votes.where.not(result: "pending").count
  end

  def add_vote_to_users
    User.all.each do |user|
      vote = Vote.new
      vote.user = user
      vote.decision = self
      vote.save!
    end
  end

  def add_results(accepted, rejected, deferred)
    council_results = [accepted, rejected, deferred]
    max_votes = council_results.max
    self.result = council_results.index(max_votes) + 1
    self.save!
  end

  include PgSearch
  pg_search_scope :search_by_title_and_description_and_minutes,
                  against: %i[title description minutes],
                  using: {
                    tsearch: { prefix: true }
                  }
end
