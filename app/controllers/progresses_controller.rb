class ProgressesController < IntroductionsController
    before_action :authenticate_user!
    before_action :authenticate_provider!,except: [:index,:show]

  def index
    @introductions = Introduction.all.order(id: :DESC)
    @news = News.all
  end

  def show
    @introduction = Introduction.find(params[:id])
  end





end
