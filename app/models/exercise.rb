class Exercise < ActiveRecord::Base
  belongs_to :user
  belongs_to :daily_plan
  belongs_to :workout

  validates :period, presence: true
end