class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :gender
      t.date :birth
      t.float :height
      t.integer :user_id
      t.timestamps
    end
  end
end
