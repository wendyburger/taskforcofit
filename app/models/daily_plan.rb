class DailyPlan < ActiveRecord::Base
  belongs_to :user
  belongs_to :profile
  has_many :meals
  has_many :foods, through: :meals
  has_many :exercises
  has_many :workouts, through: :exercises

  def cal_metabolic
    today = Date.today
    birthday = user.profile.birth
    overflow = (today.mon > birthday.mon || 
              (today.mon == birthday.mon && today.day >= birthday.day))? 0 : 1
    age = today.year.to_i - birthday.year.to_i - overflow

    if user.profile.gender == '男'
      self.basal_metabolic = (13.7 * weight)+(5.0 * user.profile.height)-(6.8 * age) + 66
    elsif user.profile.gender == '女'
      self.basal_metabolic = (9.6 * weight)+(1.8 * user.profile.height)-(4.7 * age)+655
    end

    self.suggest_metabolic_rate = basal_metabolic * activity_rate
  end

  def cal_meal_calorie
    sum = 0
    meals.each do |meal|
      sum += (meal.food.food_cal / meal.food.gram * meal.food.per_serve * meal.serve)
    end
    sum
  end

  def cal_exercise_calorie
    sum = 0
    exercises.each do |exercise|
      sum += (exercise.workout.workout_cal * (exercise.period.to_f / 60))
    end
    sum * weight
  end
end