class ProgressesController < IntroductionsController


  def index
    @introductions = Introduction.all

  end

  def news
    @news = News.find(params[:id])
  end

  def show
    @introduction = Introduction.find(params[:id])
  end





end
