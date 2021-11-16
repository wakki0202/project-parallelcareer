class IntroductionsController < ApplicationController
  def index
    @introductions = Introduction.all.order(id: :DESC)
  end

  def show
    @introduction = Introduction.find(params[:id])
  end

  def new
     @provider = Provider.find(params[:id])
     @introduction = Introduction.new
  end
   def create
      @provider = Provider.find(params[:provider_id])
      @introduction = Introduction.new(
        introduction_params )
      
  
      
      if  @introduction.save
        
          redirect_back(fallback_location: tops_index_path)  #コメント送信後は、一つ前のページへリダイレクトさせる。
      else
          redirect_back(fallback_location: providers_path)  #同上
          flash.now.alert = '入力に誤りがあります。入力必須項目を確認して下さい。'
    end
  end
  private

  def introduction_params
    params.permit(:name, :phonenumber, :contents).merge(user_id: current_user.id, provider_id: params[:provider_id]) #ストロングパラメーターで、
  end 



  

end
