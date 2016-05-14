class AddMealDateToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :meal_date, :date
    add_column :meals, :meal_time, :time
  end
end
