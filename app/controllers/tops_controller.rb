class TopsController < ApplicationController
  def index
  end
  
  def news
    @news = News.all.page(params[:page])
  end

  def newsshow
    @news = News.find(params[:id])
  end

end
