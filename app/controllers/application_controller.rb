class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:tel,:scout])
      devise_parameter_sanitizer.permit(:invite, keys: [:email, :name, :tel,:scout])
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :name, :tel])
    end

  def after_sign_in_path_for(resource)
    case resource
    when User
       "/users/mypage/#{current_user.id}"
    when Provider
      works_path

    end
  end

  def after_sign_up_path_for(resource)
 
   respond_to   users_complete_path
  

  end

  
end
