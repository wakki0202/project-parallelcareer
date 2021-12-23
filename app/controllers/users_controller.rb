class UsersController < ApplicationController

  def index
    @users = User.all
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

       render action: :bankdit

    else
      redirect_back(fallback_location: users_edit_path)

    end
   
  
  end

    private



  def update_basic_params

    params.permit(:username,:phonenumber,:email,:career,:appeal)
  end 

  def update_bank_params

    params.permit(:bank, :branch, :banknumber, :kinds)
  end 

end
