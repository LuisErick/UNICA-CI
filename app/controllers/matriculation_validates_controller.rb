class MatriculationValidatesController < ApplicationController
  before_action :set_matriculation_validate, only: [:show, :edit, :update, :destroy]

  # GET /matriculation_validates
  # GET /matriculation_validates.json
  def index
    @matriculation_validates = MatriculationValidate.all
  end

  # GET /matriculation_validates/1
  # GET /matriculation_validates/1.json
  def show
  end

  # GET /matriculation_validates/new
  def new
    @matriculation_validate = MatriculationValidate.new
  end

  # GET /matriculation_validates/1/edit
  def edit
  end

  # POST /matriculation_validates
  # POST /matriculation_validates.json
  def create
    @matriculation_validate = MatriculationValidate.new(matriculation_validate_params)

    respond_to do |format|
      if @matriculation_validate.save
        format.html { redirect_to @matriculation_validate, notice: 'Matriculation validate was successfully created.' }
        format.json { render :show, status: :created, location: @matriculation_validate }
      else
        format.html { render :new }
        format.json { render json: @matriculation_validate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matriculation_validates/1
  # PATCH/PUT /matriculation_validates/1.json
  def update
    respond_to do |format|
      if @matriculation_validate.update(matriculation_validate_params)
        format.html { redirect_to @matriculation_validate, notice: 'Matriculation validate was successfully updated.' }
        format.json { render :show, status: :ok, location: @matriculation_validate }
      else
        format.html { render :edit }
        format.json { render json: @matriculation_validate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matriculation_validates/1
  # DELETE /matriculation_validates/1.json
  def destroy
    @matriculation_validate.destroy
    respond_to do |format|
      format.html { redirect_to matriculation_validates_url, notice: 'Matriculation validate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriculation_validate
      @matriculation_validate = MatriculationValidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matriculation_validate_params
      params.require(:matriculation_validate).permit(:matriculation_id, :institution, :state)
    end
end
