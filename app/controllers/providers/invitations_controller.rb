class Providers::InvitationsController < Devise::InvitationsController
  def new
    
    @providers = Provider.all
    @introductionnumber = Introduction.where(step: nil).count
    @detailnumber = Detail.where(status: "未対応").count
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