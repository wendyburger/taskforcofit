class AddActivityRateToDailyPlans < ActiveRecord::Migration
  def change
    add_column :daily_plans, :activity_rate, :float
  end
end
