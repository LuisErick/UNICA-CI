class MatricualtionValidatesController < ApplicationController
  before_action :set_matricualtion_validate, only: [:show, :edit, :update, :destroy]

  # GET /matricualtion_validates
  # GET /matricualtion_validates.json
  def index
    @matricualtion_validates = MatricualtionValidate.all
  end

  # GET /matricualtion_validates/1
  # GET /matricualtion_validates/1.json
  def show
  end

  # GET /matricualtion_validates/new
  def new
    @matricualtion_validate = MatricualtionValidate.new
  end

  # GET /matricualtion_validates/1/edit
  def edit
  end

  # POST /matricualtion_validates
  # POST /matricualtion_validates.json
  def create
    @matricualtion_validate = MatricualtionValidate.new(matricualtion_validate_params)

    respond_to do |format|
      if @matricualtion_validate.save
        format.html { redirect_to @matricualtion_validate, notice: 'Matricualtion validate was successfully created.' }
        format.json { render :show, status: :created, location: @matricualtion_validate }
      else
        format.html { render :new }
        format.json { render json: @matricualtion_validate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matricualtion_validates/1
  # PATCH/PUT /matricualtion_validates/1.json
  def update
    respond_to do |format|
      if @matricualtion_validate.update(matricualtion_validate_params)
        format.html { redirect_to @matricualtion_validate, notice: 'Matricualtion validate was successfully updated.' }
        format.json { render :show, status: :ok, location: @matricualtion_validate }
      else
        format.html { render :edit }
        format.json { render json: @matricualtion_validate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matricualtion_validates/1
  # DELETE /matricualtion_validates/1.json
  def destroy
    @matricualtion_validate.destroy
    respond_to do |format|
      format.html { redirect_to matricualtion_validates_url, notice: 'Matricualtion validate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matricualtion_validate
      @matricualtion_validate = MatricualtionValidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matricualtion_validate_params
      params.require(:matricualtion_validate).permit(:matriculation_id, :institution)
    end
end
