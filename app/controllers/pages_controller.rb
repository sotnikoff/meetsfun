class PagesController < ApplicationController
  def index
    @interests = Interest.all
    if user_signed_in?
      @meets = Meeting.where(city_id: current_user.city).limit(5)
    else
      @meets = Meeting.limit(5)
    end
  end

  def admin; end
end
