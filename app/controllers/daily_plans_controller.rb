class DailyPlansController < ApplicationController
  def index
    @daily_plans = DailyPlan.all
  end

  def new
    @daily_plan = DailyPlan.new
  end

  def create
    @daily_plan = current_user.daily_plans.build(plan_params)
    @daily_plan.cal_metabolic(current_user)

    if @daily_plan.save 
      redirect_to @daily_plan
    end
  end

  def show
    @daily_plan = DailyPlan.find(params[:id])
  end

  private

  def plan_params
    params.require(:daily_plan).permit(:weight, :daily_date)
  end
end