class MatriculationCoursesController < ApplicationController
  before_action :set_matriculation_course, only: [:show, :edit, :update, :destroy]

  # GET /matriculation_courses
  # GET /matriculation_courses.json
  def index
    @matriculation_courses = MatriculationCourse.all
  end

  # GET /matriculation_courses/1
  # GET /matriculation_courses/1.json
  def show
  end

  # GET /matriculation_courses/new
  def new
    @matriculation_course = MatriculationCourse.new
  end

  # GET /matriculation_courses/1/edit
  def edit
  end

  # POST /matriculation_courses
  # POST /matriculation_courses.json
  def create
    @matriculation_course = MatriculationCourse.new(matriculation_course_params)

    respond_to do |format|
      if @matriculation_course.save
        format.html { redirect_to @matriculation_course, notice: 'Matriculation course was successfully created.' }
        format.json { render :show, status: :created, location: @matriculation_course }
      else
        format.html { render :new }
        format.json { render json: @matriculation_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matriculation_courses/1
  # PATCH/PUT /matriculation_courses/1.json
  def update
    respond_to do |format|
      if @matriculation_course.update(matriculation_course_params)
        format.html { redirect_to @matriculation_course, notice: 'Matriculation course was successfully updated.' }
        format.json { render :show, status: :ok, location: @matriculation_course }
      else
        format.html { render :edit }
        format.json { render json: @matriculation_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matriculation_courses/1
  # DELETE /matriculation_courses/1.json
  def destroy
    @matriculation_course.destroy
    respond_to do |format|
      format.html { redirect_to matriculation_courses_url, notice: 'Matriculation course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matriculation_course
      @matriculation_course = MatriculationCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matriculation_course_params
      params.require(:matriculation_course).permit(:matriculation_id, :package_id, :start_date, :end_date, :final_grade)
    end
end
