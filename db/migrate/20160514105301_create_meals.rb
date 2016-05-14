class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :food_id
      t.float :serve
      t.datetime :meal_time
      t.integer :user_id
      t.timestamps
    end
  end
end
