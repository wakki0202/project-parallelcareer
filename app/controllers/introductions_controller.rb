class IntroductionsController < ApplicationController
#before_action :authenticate_provider!,only: [:index,:show,:edit,:update]
#before_action :authenticate_user!,only: [:new,:create]
  def index
    @introductions = Introduction.all.page(params[:page]).per(10).order(id: :DESC)
    @q = Introduction.all.ransack(params[:q])
    @introductions = @q.result.page(params[:page]).per(10).order("created_at desc")
    @introductionnumber = Introduction.where(step: nil).count
    @detailnumber = Detail.where(status: "未対応").count
    
  end

  def show
    @introduction = Introduction.find(params[:id])
    @introductionnumber = Introduction.where(step: nil).count
    @detailnumber = Detail.where(status: "未対応").count
  end

 

  def new
     @work = Work.find(params[:id])
     @introduction = Introduction.new
  end

   

   def create
      @work = Work.find(params[:work_id])
      @introduction = Introduction.new(
        introduction_params ) #provider=事業者 #work=案件undefined method `email' for nil:NilClass
      
  
      
      if  @introduction.save
          IntroductionMailer.complete_introduction(@introduction,@work,@current_user ).deliver
          redirect_to introductions_complete_path
      else
          redirect_back(fallback_location: works_path)  #同上
          flash.now.alert = '入力に誤りがあります。入力必須項目を確認して下さい。'
      end
    end
  
 

  
  def edit
    @introduction = Introduction.find(params[:id])
  end

  def update
    @introduction = Introduction.find(params[:id])
   
  if @introduction.update(
      update_introduction_params
    )
    
      redirect_to introduction_path
    else
      redirect_back(fallback_location: works_path)
    end
   
  
  end

  def search
    #Viewのformで取得したパラメータをモデルに渡す
    @introduction = Introduction.search(params[:introduction][:search])
  end

  
  def complete

  end
    

   private

  def introduction_params

    params.require(:introduction).permit(:name, :phonenumber, :contents, :step, :work_id, :id, :permission).merge(user_id: current_user.id, work_id: params[:work_id]) #ストロングパラメーターで、
  end 



  def update_introduction_params

    params.require(:introduction).permit(:step) #ストロングパラメーターで、
  end 
  



  
  

  

end
