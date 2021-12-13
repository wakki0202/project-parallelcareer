class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:phonenumber,:bank,:branch,:kinds,:banknumber,:status])

      devise_parameter_sanitizer.permit(:invite, keys: [:email, :username, :phonenumber])
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :username, :phonenumber])
    end


  
end
