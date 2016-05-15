class AddDailyPlanIdToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :daily_plan_id, :integer
  end
end
