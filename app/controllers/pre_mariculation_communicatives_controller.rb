class PreMariculationCommunicativesController < ApplicationController
  before_action :set_pre_mariculation_communicative, only: [:show, :edit, :update, :destroy]

  # GET /pre_mariculation_communicatives
  # GET /pre_mariculation_communicatives.json
  def index
    @pre_mariculation_communicatives = PreMariculationCommunicative.all
  end

  # GET /pre_mariculation_communicatives/1
  # GET /pre_mariculation_communicatives/1.json
  def show
  end

  # GET /pre_mariculation_communicatives/new
  def new
    @pre_mariculation_communicative = PreMariculationCommunicative.new
  end

  # GET /pre_mariculation_communicatives/1/edit
  def edit
  end

  # POST /pre_mariculation_communicatives
  # POST /pre_mariculation_communicatives.json
  def create
    @pre_mariculation_communicative = PreMariculationCommunicative.new(pre_mariculation_communicative_params)

    respond_to do |format|
      if @pre_mariculation_communicative.save
        format.html { redirect_to @pre_mariculation_communicative, notice: 'Pre mariculation communicative was successfully created.' }
        format.json { render :show, status: :created, location: @pre_mariculation_communicative }
      else
        format.html { render :new }
        format.json { render json: @pre_mariculation_communicative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_mariculation_communicatives/1
  # PATCH/PUT /pre_mariculation_communicatives/1.json
  def update
    respond_to do |format|
      if @pre_mariculation_communicative.update(pre_mariculation_communicative_params)
        format.html { redirect_to @pre_mariculation_communicative, notice: 'Pre mariculation communicative was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_mariculation_communicative }
      else
        format.html { render :edit }
        format.json { render json: @pre_mariculation_communicative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_mariculation_communicatives/1
  # DELETE /pre_mariculation_communicatives/1.json
  def destroy
    @pre_mariculation_communicative.destroy
    respond_to do |format|
      format.html { redirect_to pre_mariculation_communicatives_url, notice: 'Pre mariculation communicative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_mariculation_communicative
      @pre_mariculation_communicative = PreMariculationCommunicative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_mariculation_communicative_params
      params.require(:pre_mariculation_communicative).permit(:pre_matriculation_id, :level_id)
    end
end
