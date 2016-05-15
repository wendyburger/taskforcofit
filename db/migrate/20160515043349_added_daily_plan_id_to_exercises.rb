class AddedDailyPlanIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :daily_plan_id, :integer
  end
end
