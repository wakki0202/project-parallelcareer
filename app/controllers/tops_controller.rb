class TopsController < ApplicationController
  def index
  end
  
  def news
    @news = News.all.page(params[:page])
  end

end
