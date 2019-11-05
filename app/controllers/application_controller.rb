class ApplicationController < ActionController::Base
	  before_action :configure_permitted_parameters, if: :devise_controller?
 after_action :store_action
  
  def store_action
    return unless request.get? 
    if (request.path != "/citoyens/sign_in" &&
        request.path != "/citoyens/sign_up" &&
        request.path != "/citoyens/password/new" &&
        request.path != "/citoyens/password/edit" &&
        request.path != "/citoyens/confirmation" &&
        request.path != "/citoyens/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:citoyen, request.fullpath)
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :nom, :ville, :password, :password_confirmartion])
	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :nom, :ville, :avatar, :password, :password_confirmartion, :current_password])
  end
	
	

	
	
	
end
