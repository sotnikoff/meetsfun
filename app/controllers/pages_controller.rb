class PagesController < ApplicationController
  def index
    @cities = City.all
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
