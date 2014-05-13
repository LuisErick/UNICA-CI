class StudentAttendancesController < ApplicationController
  before_action :set_student_attendance, only: [:show, :edit, :update, :destroy]

  # GET /student_attendances
  # GET /student_attendances.json
  def index
    @student_attendances = StudentAttendance.all
  end

  # GET /student_attendances/1
  # GET /student_attendances/1.json
  def show
  end

  # GET /student_attendances/new
  def new
    @student_attendance = StudentAttendance.new
  end

  # GET /student_attendances/1/edit
  def edit
  end

  # POST /student_attendances
  # POST /student_attendances.json
  def create
    @student_attendance = StudentAttendance.new(student_attendance_params)

    respond_to do |format|
      if @student_attendance.save
        format.html { redirect_to @student_attendance, notice: 'Student attendance was successfully created.' }
        format.json { render :show, status: :created, location: @student_attendance }
      else
        format.html { render :new }
        format.json { render json: @student_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_attendances/1
  # PATCH/PUT /student_attendances/1.json
  def update
    respond_to do |format|
      if @student_attendance.update(student_attendance_params)
        format.html { redirect_to @student_attendance, notice: 'Student attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_attendance }
      else
        format.html { render :edit }
        format.json { render json: @student_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_attendances/1
  # DELETE /student_attendances/1.json
  def destroy
    @student_attendance.destroy
    respond_to do |format|
      format.html { redirect_to student_attendances_url, notice: 'Student attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_attendance
      @student_attendance = StudentAttendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_attendance_params
      params.require(:student_attendance).permit(:matriculation_course_id, :attendance_date, :state)
    end
end
