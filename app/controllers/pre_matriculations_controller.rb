class PreMatriculationsController < ApplicationController
  before_action :set_pre_matriculation, only: [:show, :edit, :update, :destroy]

  # GET /pre_matriculations
  # GET /pre_matriculations.json
  def index
    @pre_matriculations = PreMatriculation.all
  end

  # GET /pre_matriculations/1
  # GET /pre_matriculations/1.json
  def show
  end

  # GET /pre_matriculations/new
  def new
    @pre_matriculation = PreMatriculation.new
  end

  # GET /pre_matriculations/1/edit
  def edit
  end

  # POST /pre_matriculations
  # POST /pre_matriculations.json
  def create
    @pre_matriculation = PreMatriculation.new(pre_matriculation_params)

    respond_to do |format|
      if @pre_matriculation.save
        format.html { redirect_to @pre_matriculation, notice: 'Pre matriculation was successfully created.' }
        format.json { render :show, status: :created, location: @pre_matriculation }
      else
        format.html { render :new }
        format.json { render json: @pre_matriculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_matriculations/1
  # PATCH/PUT /pre_matriculations/1.json
  def update
    respond_to do |format|
      if @pre_matriculation.update(pre_matriculation_params)
        format.html { redirect_to @pre_matriculation, notice: 'Pre matriculation was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_matriculation }
      else
        format.html { render :edit }
        format.json { render json: @pre_matriculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_matriculations/1
  # DELETE /pre_matriculations/1.json
  def destroy
    @pre_matriculation.destroy
    respond_to do |format|
      format.html { redirect_to pre_matriculations_url, notice: 'Pre matriculation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_matriculation
      @pre_matriculation = PreMatriculation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_matriculation_params
      params.require(:pre_matriculation).permit(:person_id, :curse_type_id, :languaje_id, :state)
    end
end
