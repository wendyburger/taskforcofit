class Meal < ActiveRecord::Base
  belongs_to :user
  belongs_to :daily_plan
  belongs_to :food

  validates :serve, presence: true
end