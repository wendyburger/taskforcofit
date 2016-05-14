class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to @profile
    end
  end

  def show
    
  end

  private

  def profile_params
    params.require(:profile).permit(:gender, :height, :birth, :user_id)
  end
end