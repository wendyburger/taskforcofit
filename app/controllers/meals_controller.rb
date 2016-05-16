class MealsController < ApplicationController
  before_action :find_daily_plan

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = @daily_plan.meals.build(meal_params)

    if @meal.save
      redirect_to @daily_plan
    else
      render :new
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  private

  def find_daily_plan
    @daily_plan = DailyPlan.find(params[:daily_plan_id])
  end

  def meal_params
    params.require(:meal).permit(:food_id, :serve, :meal_date ,:meal_time, :user_id)
  end
end