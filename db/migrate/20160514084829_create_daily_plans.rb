class CreateDailyPlans < ActiveRecord::Migration
  def change
    create_table :daily_plans do |t|
      t.float :weight
      t.date :daily_date
      t.timestamps
    end
  end
end
