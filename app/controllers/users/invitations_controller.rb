class Users::InvitationsController < Devise::InvitationsController
  def new
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