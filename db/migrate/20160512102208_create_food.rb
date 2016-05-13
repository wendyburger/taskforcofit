class CreateFood < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :food_name
      t.float :carbohydrate
      t.float :protein
      t.float :fat
      t.float :gram
      t.float :food_cal
      t.timestamps
    end
  end
end
