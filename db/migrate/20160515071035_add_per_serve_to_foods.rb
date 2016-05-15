class AddPerServeToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :per_serve, :float
  end
end
