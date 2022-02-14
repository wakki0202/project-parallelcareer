class Users::InvitationsController < Devise::InvitationsController
  def new
    @users = User.all
    super
    
  end

  def create
    super
   introductions_complete_path
    
    

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