class PagesController < ApplicationController
  def index
    @cities = City.all
  end

  def admin

  end
end
