class Users::InvitationsController < Devise::InvitationsController
  def new
    super
  end

  def create
    super
    @user = current_user

  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end
end