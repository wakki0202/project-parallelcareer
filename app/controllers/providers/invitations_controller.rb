class Providers::InvitationsController < Devise::InvitationsController
  def new
    
    @providers = Provider.all
    super
  end

  def create
    @providers = Provider.all
    super
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