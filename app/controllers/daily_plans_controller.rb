class DailyPlansController < ApplicationController
  def index
    @user = User.find(params[:id])
    @daily_plans = @user.daily_plans
  end

  def new
    @daily_plan = DailyPlan.new
  end

  def create
    @daily_plan = current_user.daily_plans.build(plan_params)
    @daily_plan.cal_metabolic

    if @daily_plan.save 
      redirect_to @daily_plan
    end
  end

  def show
    @daily_plan = DailyPlan.find(params[:id])
    @daily_exercises = @daily_plan.workouts
    @daily_meals = @daily_plan.foods
    @daily_meal_calorie = @daily_plan.cal_meal_calorie
    @daily_exercise_calorie = @daily_plan.cal_exercise_calorie
  end

  private

  def plan_params
    params.require(:daily_plan).permit(:weight, :daily_date, :activity_rate)
  end
end