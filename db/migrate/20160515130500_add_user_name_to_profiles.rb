class AddUserNameToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :user_name, :string
  end
end
