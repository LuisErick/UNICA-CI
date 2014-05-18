class MatriculationValidateExamsController < ApplicationController
  before_action :set_matriculation_validate_exam, only: [:show, :edit, :update, :destroy]

  # GET /matriculation_validate_exams
  # GET /matriculation_validate_exams.json
  def index
    @matriculation_validate_exams = MatriculationValidateExam.all
  end

  # GET /matriculation_validate_exams/1
  # GET /matriculation_validate_exams/1.json
  def show
  end

  # GET /matriculation_validate_exams/new
  def new
    @matriculation_validate_exam = MatriculationValidateExam.new
  end

  # GET /matriculation_validate_exams/1/edit
  def edit
  end

  # POST /matriculation_validate_exams
  # POST /matriculation_validate_exams.json
  def create
    @matriculation_validate_exam = MatriculationValidateExam.new(matriculation_validate_exam_params)

    respond_to do |format|
      if @matriculation_validate_exam.save
        format.html { redirect_to @matriculation_validate_exam, notice: 'Matriculation validate exam was successfully created.' }
        format.json { render :show, status: :created, location: @matriculation_validate_exam }
      else
        format.html { render :new }
        format.json { render json: @matriculation_validate_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matriculation_validate_exams/1
  # PATCH/PUT /matriculation_validate_exams/1.json
  def update
    respond_to do |format|
      if @matriculation_validate_exam.update(matriculation_validate_exam_params)
        format.html { redirect_to @matriculation_validate_exam, notice: 'Matriculation validate exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @matriculation_validate_exam }
      else
        format.html { render :edit }
        format.json { render json: @matriculation_validate_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matriculation_validate_exams/1
  # DELETE /matriculation_validate_exams/1.json
  def destroy
    @matriculation_validate_exam.destroy
    respond_to do |format|
      format.html { redirect_to matriculation_validate_exams_url, notice: 'Matriculation validate exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriculation_validate_exam
      @matriculation_validate_exam = MatriculationValidateExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matriculation_validate_exam_params
      params.require(:matriculation_validate_exam).permit(:matriculation_validate, :grade)
    end
end
