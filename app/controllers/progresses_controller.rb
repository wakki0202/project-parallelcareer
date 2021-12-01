class ProgressesController < IntroductionsController

  def index
    @introductions = Introduction.all.order(id: :DESC)
    @progresses = Progress.all
  end

  def show
    @introduction = Introduction.find(params[:id])
  end

  def new
      @introduction = Introduction.find(params[:id])
      @progress = Progress.new
  end

  def create
      @introduction = Introduction.find(params[:introduction_id])
      @progress = Progress.new(
        progress_params )
      
  if  @progress.save
         
         redirect_to introductions_complete_path
  else
          redirect_back(fallback_location: providers_path)  #同上
          flash.now.alert = '入力に誤りがあります。入力必須項目を確認して下さい。'
  end



  end
  private

  def progress_params
    params.require(:progress).permit(:step, :introduction_id).merge(introduction_id: params[:introduction_id])  #ストロングパラメーターで、
  end 
end
