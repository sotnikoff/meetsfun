class ProfilesController < ApplicationController
  def show
    if user_signed_in?
      @user = current_user
    else
      redirect_to root_path, :notice => 'Вы должны сначала войти в систему'
    end
  end

  def edit
    if user_signed_in?
      @user = current_user
    else
      redirect_to root_path, :notice => 'Вы должны сначала войти в систему'
    end
  end
end
