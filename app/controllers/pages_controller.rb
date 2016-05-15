class PagesController < ApplicationController
  def home
    @profiles = Profile.all
  end
end