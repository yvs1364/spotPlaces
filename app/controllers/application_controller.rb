class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # add custom params for devise 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[pseudo email password password_confirmation])
  end
end
