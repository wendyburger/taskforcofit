class DailyPlan < ActiveRecord::Base
  has_many :workouts
  has_many :foods
  belongs_to :user

  def cal_metabolic(current_user)
    # today = Date.today
    # birthday = Date.new(self.birth)
    # overflow = (today.mon > birthday.mon || 
    #           (today.mon == birthday.mon && today.day >= birthday.day))? 0 : 1
    # age = today.year.to_i - birthday.year.to_i - overflow

    # if self.gender == '男'
    #   self.basal_metabolic = (13.7 * self.weight)+(5.0 * self.height)-(6.8 * age) + 66
    # elsif self.gender == '女'
    #   self.basal_metabolic = (9.6 * self.weight)+(1.8 * self.height)-(4.7 * age)+655
    # end
    self.basal_metabolic = 1500 
  end
end