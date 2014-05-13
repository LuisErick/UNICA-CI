class UnicaPeopleController < ApplicationController
  before_action :set_unica_person, only: [:show, :edit, :update, :destroy]

  # GET /unica_people
  # GET /unica_people.json
  def index
    @unica_people = UnicaPerson.all
  end

  # GET /unica_people/1
  # GET /unica_people/1.json
  def show
  end

  # GET /unica_people/new
  def new
    @unica_person = UnicaPerson.new
  end

  # GET /unica_people/1/edit
  def edit
  end

  # POST /unica_people
  # POST /unica_people.json
  def create
    @unica_person = UnicaPerson.new(unica_person_params)

    respond_to do |format|
      if @unica_person.save
        format.html { redirect_to @unica_person, notice: 'Unica person was successfully created.' }
        format.json { render :show, status: :created, location: @unica_person }
      else
        format.html { render :new }
        format.json { render json: @unica_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unica_people/1
  # PATCH/PUT /unica_people/1.json
  def update
    respond_to do |format|
      if @unica_person.update(unica_person_params)
        format.html { redirect_to @unica_person, notice: 'Unica person was successfully updated.' }
        format.json { render :show, status: :ok, location: @unica_person }
      else
        format.html { render :edit }
        format.json { render json: @unica_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unica_people/1
  # DELETE /unica_people/1.json
  def destroy
    @unica_person.destroy
    respond_to do |format|
      format.html { redirect_to unica_people_url, notice: 'Unica person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unica_person
      @unica_person = UnicaPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unica_person_params
      params.require(:unica_person).permit(:person_id, :college_id, :semester)
    end
end
