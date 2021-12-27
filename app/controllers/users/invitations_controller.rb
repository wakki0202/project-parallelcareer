class Users::InvitationsController < Devise::InvitationsController
  def new
    super
  end

  def create
    @user = current_user

    if @user.save
    @user.invite!(current_user)
    redirect_to introductions_complete_path
    else
    redirect_to back
    end
    

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