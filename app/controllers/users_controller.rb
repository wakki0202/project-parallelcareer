class UsersController < ApplicationController

  def index
    @users = User.all
    @questionnumber = Question.all.count
    @introductionnumber = Introduction.all.count
  end

 def confirm

 end

end
