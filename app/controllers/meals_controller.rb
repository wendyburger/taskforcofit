class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end
  
  def new
    @meal = Meal.new
  end

  def create
    @meal = current_user.meals.build(meal_params)

    if @meal.save
      redirect_to @meal
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  private

  def meal_params
    params.require(:meal).permit(:food_id, :serve, :meal_time, :user_id)
  end
end