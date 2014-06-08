class CertificationsController < ApplicationController
  before_action :set_certification, only: [:show, :edit, :update, :destroy]

  # GET /certifications
  # GET /certifications.json
  def index
    @certifications = Certification.all
  end

  # GET /certifications/1
  # GET /certifications/1.json
  def show
  end

  # GET /certifications/new
  def new
    @certification = Certification.new
  end

  # GET /certifications/1/edit
  def edit
  end

  # POST /certifications
  # POST /certifications.json
  def create
    @certification = Certification.new(certification_params)

    respond_to do |format|
      if @certification.save
        format.html { redirect_to @certification, notice: 'Certification was successfully created.' }
        format.json { render :show, status: :created, location: @certification }
      else
        format.html { render :new }
        format.json { render json: @certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certifications/1
  # PATCH/PUT /certifications/1.json
  def update
    respond_to do |format|
      if @certification.update(certification_params)
        format.html { redirect_to @certification, notice: 'Certification was successfully updated.' }
        format.json { render :show, status: :ok, location: @certification }
      else
        format.html { render :edit }
        format.json { render json: @certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certifications/1
  # DELETE /certifications/1.json
  def destroy
    @certification.destroy
    respond_to do |format|
      format.html { redirect_to certifications_url, notice: 'Certification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certification
      @certification = Certification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certification_params
      params.require(:certification).permit(:matriculation_id, :state, :delivery_date)
    end
end
