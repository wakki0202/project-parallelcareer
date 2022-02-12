module Accessible
  extend ActiveSupport::Concern
  included do
    prepend_before_action :check_user
  end

  protected
  def check_user
    if current_provider
      flash[:notice] = '※ユーザー専用ページです。事業者ログアウト後、ユーザーとしてログインし直してください※'
      redirect_to works_path and return
    elsif current_user
      flash[:notice] = '※ユーザーログアウト後、事業者としてログインし直してください※'
      redirect_to(root_path) and return
    end
  end
end