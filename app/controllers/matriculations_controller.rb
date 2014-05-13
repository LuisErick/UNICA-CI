class MatriculationsController < ApplicationController
  before_action :set_matriculation, only: [:show, :edit, :update, :destroy]

  # GET /matriculations
  # GET /matriculations.json
  def index
    @matriculations = Matriculation.all
  end

  # GET /matriculations/1
  # GET /matriculations/1.json
  def show
  end

  # GET /matriculations/new
  def new
    @matriculation = Matriculation.new
  end

  # GET /matriculations/1/edit
  def edit
  end

  # POST /matriculations
  # POST /matriculations.json
  def create
    @matriculation = Matriculation.new(matriculation_params)

    respond_to do |format|
      if @matriculation.save
        format.html { redirect_to @matriculation, notice: 'Matriculation was successfully created.' }
        format.json { render :show, status: :created, location: @matriculation }
      else
        format.html { render :new }
        format.json { render json: @matriculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matriculations/1
  # PATCH/PUT /matriculations/1.json
  def update
    respond_to do |format|
      if @matriculation.update(matriculation_params)
        format.html { redirect_to @matriculation, notice: 'Matriculation was successfully updated.' }
        format.json { render :show, status: :ok, location: @matriculation }
      else
        format.html { render :edit }
        format.json { render json: @matriculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matriculations/1
  # DELETE /matriculations/1.json
  def destroy
    @matriculation.destroy
    respond_to do |format|
      format.html { redirect_to matriculations_url, notice: 'Matriculation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriculation
      @matriculation = Matriculation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matriculation_params
      params.require(:matriculation).permit(:pre_matriculation_id, :acceptance_day)
    end
end
