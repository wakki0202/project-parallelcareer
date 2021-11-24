class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:phonenumber,:bank,:branch,:kinds,:banknumber])

      devise_parameter_sanitizer.permit(:invite, keys: [:email, :username, :phonenumber])
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :username, :phonenumber])
    end


  def after_sign_in_path_for(resource)
    tops_index_path
  end
  def after_sign_out_path_for(resource)
    tops_index_path
  end
end
