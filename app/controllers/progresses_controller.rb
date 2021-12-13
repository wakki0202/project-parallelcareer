class ProgressesController < IntroductionsController
    before_action :authenticate_user!

  def index
    @introductions = Introduction.all.order(id: :DESC)
    @news = News.all
  end

  def show
    @introduction = Introduction.find(params[:id])
  end





end
