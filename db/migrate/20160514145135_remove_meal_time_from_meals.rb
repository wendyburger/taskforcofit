class RemoveMealTimeFromMeals < ActiveRecord::Migration
  def change
    remove_column :meals, :meal_time
  end
end
