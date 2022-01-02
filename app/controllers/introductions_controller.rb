class IntroductionsController < ApplicationController
#before_action :authenticate_provider!,only: [:index,:show,:edit,:update], unless: proc { admin_signed_in? }
#before_action :authenticate_user!,only: [:new,:create]
  def index
    @introductions = Introduction.all.order(id: :DESC)
    @introductionnumber = Introduction.all.count
    @questionnumber = Question.all.count
  end

  def show
    @introduction = Introduction.find(params[:id])
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
          IntroductionMailer.complete_introduction(@introduction,@work,@current_user,receiver: @provider ).deliver
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
    

   private

  def introduction_params

    params.require(:introduction).permit(:name, :phonenumber, :contents, :step, :work_id, :id).merge(user_id: current_user.id, work_id: params[:work_id]) #ストロングパラメーターで、
  end 



  def update_introduction_params

    params.require(:introduction).permit(:name, :phonenumber, :contents, :step, :id).merge(user_id: current_user.id) #ストロングパラメーターで、
  end 
  


  def complete

  end

  def detail
  if current_user == @user
   DetailMailer.detail_introduction(work,current_user).deliver
    redirect_to posts_index_path
  else
    redirect_to posts_index_path
  end
  end
  

  

end
