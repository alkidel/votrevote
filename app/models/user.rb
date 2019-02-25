class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :towns
  has_many :votes
  has_many :decisions, through: :votes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
