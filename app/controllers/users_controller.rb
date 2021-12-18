class UsersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @users = User.all
    @questionnumber = Question.all.count
    @introductionnumber = Introduction.all.count
  end

 

end
