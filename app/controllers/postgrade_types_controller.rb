class PostgradeTypesController < ApplicationController
  before_action :set_postgrade_type, only: [:show, :edit, :update, :destroy]

  # GET /postgrade_types
  # GET /postgrade_types.json
  def index
    @postgrade_types = PostgradeType.all
  end

  # GET /postgrade_types/1
  # GET /postgrade_types/1.json
  def show
  end

  # GET /postgrade_types/new
  def new
    @postgrade_type = PostgradeType.new
  end

  # GET /postgrade_types/1/edit
  def edit
  end

  # POST /postgrade_types
  # POST /postgrade_types.json
  def create
    @postgrade_type = PostgradeType.new(postgrade_type_params)

    respond_to do |format|
      if @postgrade_type.save
        format.html { redirect_to @postgrade_type, notice: 'Postgrade type was successfully created.' }
        format.json { render :show, status: :created, location: @postgrade_type }
      else
        format.html { render :new }
        format.json { render json: @postgrade_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postgrade_types/1
  # PATCH/PUT /postgrade_types/1.json
  def update
    respond_to do |format|
      if @postgrade_type.update(postgrade_type_params)
        format.html { redirect_to @postgrade_type, notice: 'Postgrade type was successfully updated.' }
        format.json { render :show, status: :ok, location: @postgrade_type }
      else
        format.html { render :edit }
        format.json { render json: @postgrade_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postgrade_types/1
  # DELETE /postgrade_types/1.json
  def destroy
    @postgrade_type.destroy
    respond_to do |format|
      format.html { redirect_to postgrade_types_url, notice: 'Postgrade type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postgrade_type
      @postgrade_type = PostgradeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postgrade_type_params
      params.require(:postgrade_type).permit(:name, :description)
    end
end
