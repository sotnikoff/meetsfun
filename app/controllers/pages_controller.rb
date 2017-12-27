class PagesController < ApplicationController
  def index

  end

  def main
    @search = Meeting.search(params[:q])
    @meets = if params[:q]
                  @search.result
                else
                  Meeting.all
                end
  end

  def admin; end

  def search
    @search = Meeting.search(params[:q])
    puts @search
    @meetings = if params[:q]
                  @search.result
                else
                  Meeting.all
                end
  end
end
