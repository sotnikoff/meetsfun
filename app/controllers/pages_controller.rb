class PagesController < ApplicationController
  def index
    @count = Meeting.count
    @interests = Interest.all
    @meets = if user_signed_in?
               Meeting.where(city_id: current_user.city).limit(5)
             else
               Meeting.limit(5)
             end
  end

  def admin; end

  def search
    @search = Meeting.search(params[:q])
    @meetings = @search.result
  end
end
