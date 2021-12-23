class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:phonenumber,:bank,:branch,:kinds,:banknumber,:referrer_id])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username,:phonenumber,:bank,:branch,:kinds,:banknumber,:career,:appeal])
      devise_parameter_sanitizer.permit(:invite, keys: [:email, :username, :phonenumber])
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :username, :phonenumber])
    end

  def after_sign_in_path_for(resource)
    case resource
    when User
      tops_index_path
    when Admin
      works_path
    when Provider
      works_path

    end
  end

  #def authenticate_any!
  #if admin_signed_in?
      #true
  #else
      #authenticate_provider!
  #end
  #end
  
end
