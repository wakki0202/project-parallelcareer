class PostsController < WorksController

  
  def index　#ユーザー側投稿一覧
    @works = Work.all
    
    
  end

  def show　#ユーザー側投稿詳細
     @work = Work.find(params[:id])
     @introduction = Introduction.new
  end
  



end
