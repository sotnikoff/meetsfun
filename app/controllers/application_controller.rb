class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # layout :search_init

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :email, :description, :city_id])
  end

end
