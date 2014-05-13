class PostgradePeopleController < ApplicationController
  before_action :set_postgrade_person, only: [:show, :edit, :update, :destroy]

  # GET /postgrade_people
  # GET /postgrade_people.json
  def index
    @postgrade_people = PostgradePerson.all
  end

  # GET /postgrade_people/1
  # GET /postgrade_people/1.json
  def show
  end

  # GET /postgrade_people/new
  def new
    @postgrade_person = PostgradePerson.new
  end

  # GET /postgrade_people/1/edit
  def edit
  end

  # POST /postgrade_people
  # POST /postgrade_people.json
  def create
    @postgrade_person = PostgradePerson.new(postgrade_person_params)

    respond_to do |format|
      if @postgrade_person.save
        format.html { redirect_to @postgrade_person, notice: 'Postgrade person was successfully created.' }
        format.json { render :show, status: :created, location: @postgrade_person }
      else
        format.html { render :new }
        format.json { render json: @postgrade_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postgrade_people/1
  # PATCH/PUT /postgrade_people/1.json
  def update
    respond_to do |format|
      if @postgrade_person.update(postgrade_person_params)
        format.html { redirect_to @postgrade_person, notice: 'Postgrade person was successfully updated.' }
        format.json { render :show, status: :ok, location: @postgrade_person }
      else
        format.html { render :edit }
        format.json { render json: @postgrade_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postgrade_people/1
  # DELETE /postgrade_people/1.json
  def destroy
    @postgrade_person.destroy
    respond_to do |format|
      format.html { redirect_to postgrade_people_url, notice: 'Postgrade person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postgrade_person
      @postgrade_person = PostgradePerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postgrade_person_params
      params.require(:postgrade_person).permit(:person_id, :postgrade_type_id)
    end
end
