class PagesController < ApplicationController
  def index
    @cities = City.all()
  end
end
