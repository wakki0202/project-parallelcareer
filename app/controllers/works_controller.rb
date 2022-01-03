class WorksController < ApplicationController
  #before_action :authenticate_provider!,only: [:index,:show,:edit,:update], unless: proc { admin_signed_in? }
  before_action :set_work, only: %i[ show edit update destroy ]

  # GET /works or /works.json
  def index
    @works = Work.all.page(params[:page]).per(6)
    @q = Work.ransack(params[:q])
    @works = @q.result(distinct: true).page(params[:page]).per(6).order("created_at desc")
    @questionnumber = Question.all.count
    @introductionnumber = Introduction.all.count
  end

  # GET /works/1 or /works/1.json
  def show
    @work = Work.find(params[:id])
    @provider = @work.provider 
  end

  # GET /works/new
  def new
    @work = Work.new
  end

  # GET /works/1/edit
  def edit
  end

  # POST /works or /works.json
  def create
    @work = Work.new(work_params)
    @work.provider_id = current_provider.id

    respond_to do |format|
      if @work.save
        format.html { redirect_to @work, notice: "work was successfully created." }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works/1 or /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work, notice: "work was successfully updated." }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1 or /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: "work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_params
      params.require(:work).permit(:title, :company, :link, :reward, :pcontent, :rday, :rcontent, :area, :appeal, :status, {images: []})
    end

    
end
