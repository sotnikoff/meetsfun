class PagesController < ApplicationController
  def index

  end

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
end
