class Providers::InvitationsController < Devise::InvitationsController
  def new
    
    @providers = Provider.all
    @introductionnumber = current_provider.works.joins(:introductions).where(introductions: {step: nil}).count
    @introductionall = Introduction.where(step: nil).count
    @detailnumber = current_provider.works.joins(:details).where(details: {status: "未対応"}).count
    @detailnumberall = Detail.where(status: "未対応").count
    super
  end

  def create
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