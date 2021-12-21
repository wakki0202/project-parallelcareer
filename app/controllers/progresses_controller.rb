class ProgressesController < IntroductionsController


  def index
    @introductions = Introduction.all.order(id: :DESC)
    @news = News.all
  end

  def show
    @introduction = Introduction.find(params[:id])
  end





end
