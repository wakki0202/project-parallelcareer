class UsersController < ApplicationController
  def index
    @users = User.all
    @questionnumber = Question.all.count
  end

 

end
