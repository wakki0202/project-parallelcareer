class UsersController < ApplicationController

  def index
    @users = User.all.page(params[:page]).per(10)
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page]).order("created_at asc")
    
    @introductionnumber = current_provider.works.joins(:introductions).where(introductions: {step: nil}).count
    @introductionall = Introduction.where(step: nil).count
    @detailnumber = current_provider.works.joins(:details).where(details: {status: "未対応"}).count
    @detailnumberall = Detail.where(status: "未対応").count
  end

  

 def confirm

 end

 def basicedit
    @user = current_user
  end



  def bankedit
    @user = current_user
  end

  def update
    if current_user.update(
        update_basic_params
      )
      
        render action: :basicedit

    end
    if current_user.update(
        update_bank_params
      )

       users_bankedit_path


    end
   
  
  end

    def mypage
      @user = User.find(params[:id])
      redirect_to(tops_index_path) unless @user == current_user
      @works = Work.order("RANDOM()").limit(6)

    end

    def show
    @user = User.find(params[:id])
    @introductionnumber = current_provider.works.joins(:introductions).where(introductions: {step: nil}).count
    @introductionall = Introduction.where(step: nil).count
    @detailnumber = current_provider.works.joins(:details).where(details: {status: "未対応"}).count
    @detailnumberall = Detail.where(status: "未対応").count
  end

      def destroy

      end

      def news

      end

      def complete

      end
   

    private



  def update_basic_params

    params.permit(:name,:tel,:email,:career,:appeal,:headhunt)
  end 

  def update_bank_params

    params.permit(:bank, :account_type, :branch, :account_no)
  end 

end
