class Workout < ActiveRecord::Base
  has_many :exercises
  has_many :daily_plans, through: :exercises
end