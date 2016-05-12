class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :item
      t.float :workout_cal
      t.timestamps
    end
  end
end
