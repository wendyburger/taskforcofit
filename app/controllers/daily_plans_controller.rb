class DailyPlansController < ApplicationController
  before_action :find_user, only: [:index]

  def index
    @daily_plans = @user.daily_plans.order('daily_date DESC')
  end

  def new
    @daily_plan = DailyPlan.new
  end

  def create
    @daily_plan = current_user.daily_plans.build(plan_params)
    @daily_plan.cal_metabolic

    if @daily_plan.save 
      redirect_to @daily_plan
      flash[:notice] = '你成功新增每日計畫'
    else
      render :new
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

  def find_user
    @user = User.find(params[:id])
  end
end