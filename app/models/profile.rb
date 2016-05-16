class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :daily_plans

  validates :gender, presence: true
  validates :birth, presence: true
  validates :height, presence: true
  validates :user_name, presence: true
end