class PagesController < ApplicationController

  before_action :check_user_is_admin, only: [:admin]

  def index; end

  def main
    @search = Meeting.search(params[:q])
    @meets = if params[:q]
               @search.result
             else
               Meeting.order(date_time_start: :desc).first(5)
             end
  end

  def admin; end

  def search
    @search = Meeting.search(params[:q])
    @meetings = if params[:q]
                  @search.result
                else
                  Meeting.order(date_time_start: :desc).first(5)
                end
  end

  private

  def check_user_is_admin
    if current_user
      unless current_user.admin
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end
