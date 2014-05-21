class TeacherAttendancesController < ApplicationController
  before_action :set_teacher_attendance, only: [:show, :edit, :update, :destroy]

  # GET /teacher_attendances
  # GET /teacher_attendances.json
  def index
    @teacher_attendances = TeacherAttendance.all
  end

  # GET /teacher_attendances/1
  # GET /teacher_attendances/1.json
  def show
  end

  # GET /teacher_attendances/new
  def new
    @teacher_attendance = TeacherAttendance.new
  end

  # GET /teacher_attendances/1/edit
  def edit
  end

  # POST /teacher_attendances
  # POST /teacher_attendances.json
  def create
    @teacher_attendance = TeacherAttendance.new(teacher_attendance_params)

    respond_to do |format|
      if @teacher_attendance.save
        format.html { redirect_to @teacher_attendance, notice: 'Teacher attendance was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_attendance }
      else
        format.html { render :new }
        format.json { render json: @teacher_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_attendances/1
  # PATCH/PUT /teacher_attendances/1.json
  def update
    respond_to do |format|
      if @teacher_attendance.update(teacher_attendance_params)
        format.html { redirect_to @teacher_attendance, notice: 'Teacher attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_attendance }
      else
        format.html { render :edit }
        format.json { render json: @teacher_attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_attendances/1
  # DELETE /teacher_attendances/1.json
  def destroy
    @teacher_attendance.destroy
    respond_to do |format|
      format.html { redirect_to teacher_attendances_url, notice: 'Teacher attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_attendance
      @teacher_attendance = TeacherAttendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_attendance_params
      params.require(:teacher_attendance).permit(:package_id, :state, :arrival_time, :dismissal_time, :session_number, :day)
    end
end
