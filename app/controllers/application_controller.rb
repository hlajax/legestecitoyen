class ApplicationController < ActionController::Base
	  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :nom, :ville, :password, :password_confirmartion])
	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :nom, :ville, :avatar, :password, :password_confirmartion, :current_password])
  end
end
