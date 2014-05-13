class ClerksController < ApplicationController
  before_action :set_clerk, only: [:show, :edit, :update, :destroy]

  # GET /clerks
  # GET /clerks.json
  def index
    @clerks = Clerk.all
  end

  # GET /clerks/1
  # GET /clerks/1.json
  def show
  end

  # GET /clerks/new
  def new
    @clerk = Clerk.new
  end

  # GET /clerks/1/edit
  def edit
  end

  # POST /clerks
  # POST /clerks.json
  def create
    @clerk = Clerk.new(clerk_params)

    respond_to do |format|
      if @clerk.save
        format.html { redirect_to @clerk, notice: 'Clerk was successfully created.' }
        format.json { render :show, status: :created, location: @clerk }
      else
        format.html { render :new }
        format.json { render json: @clerk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clerks/1
  # PATCH/PUT /clerks/1.json
  def update
    respond_to do |format|
      if @clerk.update(clerk_params)
        format.html { redirect_to @clerk, notice: 'Clerk was successfully updated.' }
        format.json { render :show, status: :ok, location: @clerk }
      else
        format.html { render :edit }
        format.json { render json: @clerk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clerks/1
  # DELETE /clerks/1.json
  def destroy
    @clerk.destroy
    respond_to do |format|
      format.html { redirect_to clerks_url, notice: 'Clerk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clerk
      @clerk = Clerk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clerk_params
      params.require(:clerk).permit(:person_id, :start_date)
    end
end
