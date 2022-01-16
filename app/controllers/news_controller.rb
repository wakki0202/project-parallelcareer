class NewsController < ApplicationController
  before_action :set_news, only: %i[ show edit update destroy ]

  # GET /news or /news.json
  def index
    @news = News.all.page(params[:page]).per(10)
    @newsnew = News.new
    @q = News.ransack(params[:q])
    @news = @q.result(distinct: true).page(params[:page]).order("created_at desc")
    
    @introductionnumber = Introduction.all.count
  end

  # GET /news/1 or /news/1.json
  def show
    @news = News.find(params[:id])
  end

  # GET /news/new
  def new
    @news = News.new
    
    @introductionnumber = Introduction.all.count
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news or /news.json
  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: "News was successfully created." }
        format.json { render :index, status: :created, location: @news }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1 or /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: "News was successfully updated." }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1 or /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: "News was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    #Viewのformで取得したパラメータをモデルに渡す
    @news = News.search(params[:search])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def news_params
      params.require(:news).permit(:title, :content)
    end
end
