class PostsController < ProvidersController

  def index　#ユーザー側投稿一覧
    @providers = Provider.all
    
  end

  def show　#ユーザー側投稿詳細
     @provider = Provider.find(params[:id])
   
  end
  



end
