class PostsController < WorksController

  
  def index　#ユーザー側投稿一覧
    @works = Work.all
    @q = Work.ransack(params[:q])
    @works = @q.result(distinct: true).order("created_at desc")
    
  end

  def show　#ユーザー側投稿詳細
     @work = Work.find(params[:id])
     @introduction = Introduction.new
  end
  



end
