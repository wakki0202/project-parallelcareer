class UsersController < ApplicationController
before_action :authenticate_user!,only: [:news,:destroy,:mypage]

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

      

      def news

      end

      def complete

      end
   
      def destroy

      end

      def destroycomp

      end

    private




end
