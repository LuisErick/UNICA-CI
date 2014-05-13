class PermisssionsController < ApplicationController
  before_action :set_permisssion, only: [:show, :edit, :update, :destroy]

  # GET /permisssions
  # GET /permisssions.json
  def index
    @permisssions = Permisssion.all
  end

  # GET /permisssions/1
  # GET /permisssions/1.json
  def show
  end

  # GET /permisssions/new
  def new
    @permisssion = Permisssion.new
  end

  # GET /permisssions/1/edit
  def edit
  end

  # POST /permisssions
  # POST /permisssions.json
  def create
    @permisssion = Permisssion.new(permisssion_params)

    respond_to do |format|
      if @permisssion.save
        format.html { redirect_to @permisssion, notice: 'Permisssion was successfully created.' }
        format.json { render :show, status: :created, location: @permisssion }
      else
        format.html { render :new }
        format.json { render json: @permisssion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permisssions/1
  # PATCH/PUT /permisssions/1.json
  def update
    respond_to do |format|
      if @permisssion.update(permisssion_params)
        format.html { redirect_to @permisssion, notice: 'Permisssion was successfully updated.' }
        format.json { render :show, status: :ok, location: @permisssion }
      else
        format.html { render :edit }
        format.json { render json: @permisssion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permisssions/1
  # DELETE /permisssions/1.json
  def destroy
    @permisssion.destroy
    respond_to do |format|
      format.html { redirect_to permisssions_url, notice: 'Permisssion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permisssion
      @permisssion = Permisssion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permisssion_params
      params.require(:permisssion).permit(:name, :description)
    end
end
