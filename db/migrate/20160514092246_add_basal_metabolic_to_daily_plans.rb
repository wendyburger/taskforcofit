class AddBasalMetabolicToDailyPlans < ActiveRecord::Migration
  def change
    add_column :daily_plans, :basal_metabolic, :float
  end
end
