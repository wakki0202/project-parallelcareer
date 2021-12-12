class DetailsController < ApplicationController
  before_action :set_detail, only: %i[ show edit update destroy ]

  # GET /details or /details.json
  def index
    @details = Detail.all
  end

  # GET /details/1 or /details/1.json
  def show
  end

  # GET /details/new
  def new
    @provider = Provider.find(params[:id])
    @detail = Detail.new
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details or /details.json
  def create
    @provider = Provider.find(params[:provider_id])
    @detail = Detail.new(detail_params)

      if @detail.save
        DetailMailer.detail_introduction(@detail,@provider,@current_user).deliver
         redirect_to introductions_complete_path
       
      end
  end

  # PATCH/PUT /details/1 or /details/1.json
  def update
    respond_to do |format|
      if @detail.update(detail_params)
        format.html { redirect_to @detail, notice: "Detail was successfully updated." }
        format.json { render :show, status: :ok, location: @detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1 or /details/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to details_url, notice: "Detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
      @detail = Detail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detail_params
      params.require(:detail).permit(:content).merge(user_id: current_user.id, provider_id: params[:provider_id])
    end
end
