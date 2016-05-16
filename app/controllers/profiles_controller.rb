class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show]
  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to @profile
      flash[:notice] = '您已經成功新增profile'
    else
      render :new
      flash[:error] = '似乎出了什麼問題'
    end
  end

  def show
  end

  private

  def profile_params
    params.require(:profile).permit(:gender, :height, :birth, :user_id, :user_name)
  end

  def find_profile
    @profile = Profile.find(params[:id])
  end
end