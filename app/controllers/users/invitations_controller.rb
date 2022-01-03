class Users::InvitationsController < Devise::InvitationsController
  def new
    super
  end

  def create
    super

    if @user.save
    introductions_complete_path
    else
      introductions_complete_path
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