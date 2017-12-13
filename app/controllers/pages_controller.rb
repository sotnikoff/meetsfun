class PagesController < ApplicationController
  def index
    @cities = City.all
    if user_signed_in?
      @user_city = current_user.city
      @meets = Meeting.where(city_id: @user_city.id)
    else
      # @meets =
    end

  end

  def admin; end
end
