class AddUserIdToDailyPlans < ActiveRecord::Migration
  def change
    add_column :daily_plans, :user_id, :integer
  end
end
