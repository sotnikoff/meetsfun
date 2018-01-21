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

  def update
    if user_signed_in?
      @user = current_user
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to profile_path, notice: 'Profile was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path, :notice => 'Вы должны сначала войти в систему'
    end
  end

  def user_params
    params.require(:user).permit(:name, :description, :city_id)
  end

end
