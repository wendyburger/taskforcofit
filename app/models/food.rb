class Food < ActiveRecord::Base
  has_many :meals
  has_many :daily_plans, through: :meals
end