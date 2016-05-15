class AddSuggestMetabolicRateToDailyPlans < ActiveRecord::Migration
  def change
    add_column :daily_plans, :suggest_metabolic_rate, :integer
  end
end
