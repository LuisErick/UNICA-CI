class MaritalStatusesController < ApplicationController
  before_action :set_marital_status, only: [:show, :edit, :update, :destroy]

  # GET /marital_statuses
  # GET /marital_statuses.json
  def index
    @marital_statuses = MaritalStatus.all
  end

  # GET /marital_statuses/1
  # GET /marital_statuses/1.json
  def show
  end

  # GET /marital_statuses/new
  def new
    @marital_status = MaritalStatus.new
  end

  # GET /marital_statuses/1/edit
  def edit
  end

  # POST /marital_statuses
  # POST /marital_statuses.json
  def create
    @marital_status = MaritalStatus.new(marital_status_params)

    respond_to do |format|
      if @marital_status.save
        format.html { redirect_to @marital_status, notice: 'Marital status was successfully created.' }
        format.json { render :show, status: :created, location: @marital_status }
      else
        format.html { render :new }
        format.json { render json: @marital_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marital_statuses/1
  # PATCH/PUT /marital_statuses/1.json
  def update
    respond_to do |format|
      if @marital_status.update(marital_status_params)
        format.html { redirect_to @marital_status, notice: 'Marital status was successfully updated.' }
        format.json { render :show, status: :ok, location: @marital_status }
      else
        format.html { render :edit }
        format.json { render json: @marital_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marital_statuses/1
  # DELETE /marital_statuses/1.json
  def destroy
    @marital_status.destroy
    respond_to do |format|
      format.html { redirect_to marital_statuses_url, notice: 'Marital status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marital_status
      @marital_status = MaritalStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marital_status_params
      params.require(:marital_status).permit(:name, :description)
    end
end
