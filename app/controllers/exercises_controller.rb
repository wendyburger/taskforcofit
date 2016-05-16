class ExercisesController < ApplicationController
  before_action :find_daily_plan
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = @daily_plan.exercises.build(exercise_params)

    if @exercise.save
      redirect_to @daily_plan
      flash[:notice] = '您已經成功新增運動紀錄'
    else
      render :new
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  private 

  def find_daily_plan
    @daily_plan = DailyPlan.find(params[:daily_plan_id])
  end

  def exercise_params
    params.require(:exercise).permit(:workout_id, :period, :exercise_time, :user_id)
  end
end