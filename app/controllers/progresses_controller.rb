class ProgressesController < IntroductionsController


  def index
    @introductions = Introduction.first(3)
    @news = News.first(3)
  end

  def news
    @news = News.find(params[:id])
  end

  def show
    @introduction = Introduction.find(params[:id])
  end





end
