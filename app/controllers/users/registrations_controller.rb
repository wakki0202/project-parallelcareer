# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    #スーパークラス(devise)のcreateアクションを呼ぶ 
    # byebug
    if params[:user][:referrer_id].present?
      # byebug
      p "bbbbbb"
      super
      if User.find_by(affiliater_id: params[:user][:referrer_id]).present?
        current_user.update(affiliater_id:SecureRandom.hex(15),referrer_id: params[:user][:referrer_id])
        
      end
      ThanxMailer.complete_registration(params[:user][:email],params[:user][:username]).deliver
      #WelcomeMailerクラスのsend_when_signupメソッドを呼び、POSTから受け取ったuserのemailとnameを渡す
    else
      # byebug
      p "aaaaaaa"
      super
      current_user.update(affiliater_id:SecureRandom.hex(15),referrer_id: params[:user][:referrer_id])
      ThanxMailer.complete_registration(params[:user][:email],params[:user][:username]).deliver
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  
end
