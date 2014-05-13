class GradeTypesController < ApplicationController
  before_action :set_grade_type, only: [:show, :edit, :update, :destroy]

  # GET /grade_types
  # GET /grade_types.json
  def index
    @grade_types = GradeType.all
  end

  # GET /grade_types/1
  # GET /grade_types/1.json
  def show
  end

  # GET /grade_types/new
  def new
    @grade_type = GradeType.new
  end

  # GET /grade_types/1/edit
  def edit
  end

  # POST /grade_types
  # POST /grade_types.json
  def create
    @grade_type = GradeType.new(grade_type_params)

    respond_to do |format|
      if @grade_type.save
        format.html { redirect_to @grade_type, notice: 'Grade type was successfully created.' }
        format.json { render :show, status: :created, location: @grade_type }
      else
        format.html { render :new }
        format.json { render json: @grade_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_types/1
  # PATCH/PUT /grade_types/1.json
  def update
    respond_to do |format|
      if @grade_type.update(grade_type_params)
        format.html { redirect_to @grade_type, notice: 'Grade type was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_type }
      else
        format.html { render :edit }
        format.json { render json: @grade_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_types/1
  # DELETE /grade_types/1.json
  def destroy
    @grade_type.destroy
    respond_to do |format|
      format.html { redirect_to grade_types_url, notice: 'Grade type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_type
      @grade_type = GradeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_type_params
      params.require(:grade_type).permit(:name, :description)
    end
end
