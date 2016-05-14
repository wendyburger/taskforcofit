class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = current_user.exercises.build(exercise_params)

    if @exercise.save
      redirect_to @exercise
      flash[:notice] = '您已經成功新增運動紀錄'
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  private 

  def exercise_params
    params.require(:exercise).permit(:workout_id, :period, :exercise_time, :user_id)
  end
end