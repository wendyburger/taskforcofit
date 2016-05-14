class CreateExercise < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :workout_id
      t.integer :period
      t.date :exercise_time
      t.integer :user_id
      t.timestamps
    end
  end
end
