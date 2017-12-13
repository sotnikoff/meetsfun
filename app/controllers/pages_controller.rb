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

  def admin

  end


  def profile
    if user_signed_in?
      @user = current_user
    else
      redirect_to root_path, :notice => 'Вы должны сначала войти в систему'
    end
  end
end
