class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :daily_plans
end