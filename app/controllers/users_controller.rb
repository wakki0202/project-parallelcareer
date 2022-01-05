class UsersController < ApplicationController

  def index
    @users = User.all.page(params[:page]).per(10)
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page]).order("created_at asc")
    @questionnumber = Question.all.count
    @introductionnumber = Introduction.all.count
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
    elsif current_user.update(
        update_bank_params
      )

       render action: :bankedit

    else
      redirect_back(fallback_location: users_edit_path)

    end
   
  
    end

    def mypage

    end

   

    private



  def update_basic_params

    params.permit(:name,:tel,:email,:career,:appeal)
  end 

  def update_bank_params

    params.permit(:bank, :branch, :account_no, :account_type)
  end 
  def destroy

  end

  def complete

  end
end
