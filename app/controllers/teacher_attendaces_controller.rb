class TeacherAttendacesController < ApplicationController
  before_action :set_teacher_attendace, only: [:show, :edit, :update, :destroy]

  # GET /teacher_attendaces
  # GET /teacher_attendaces.json
  def index
    @teacher_attendaces = TeacherAttendace.all
  end

  # GET /teacher_attendaces/1
  # GET /teacher_attendaces/1.json
  def show
  end

  # GET /teacher_attendaces/new
  def new
    @teacher_attendace = TeacherAttendace.new
  end

  # GET /teacher_attendaces/1/edit
  def edit
  end

  # POST /teacher_attendaces
  # POST /teacher_attendaces.json
  def create
    @teacher_attendace = TeacherAttendace.new(teacher_attendace_params)

    respond_to do |format|
      if @teacher_attendace.save
        format.html { redirect_to @teacher_attendace, notice: 'Teacher attendace was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_attendace }
      else
        format.html { render :new }
        format.json { render json: @teacher_attendace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_attendaces/1
  # PATCH/PUT /teacher_attendaces/1.json
  def update
    respond_to do |format|
      if @teacher_attendace.update(teacher_attendace_params)
        format.html { redirect_to @teacher_attendace, notice: 'Teacher attendace was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_attendace }
      else
        format.html { render :edit }
        format.json { render json: @teacher_attendace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_attendaces/1
  # DELETE /teacher_attendaces/1.json
  def destroy
    @teacher_attendace.destroy
    respond_to do |format|
      format.html { redirect_to teacher_attendaces_url, notice: 'Teacher attendace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_attendace
      @teacher_attendace = TeacherAttendace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_attendace_params
      params.require(:teacher_attendace).permit(:package_id, :state, :arrival_time, :dismissal_time, :session_number, :day)
    end
end
