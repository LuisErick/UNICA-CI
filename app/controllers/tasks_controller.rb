class TasksController < ApplicationController
  def pending_matriculations
  	@pendings = Matriculation.where(state: false)
  end

  def new_schedule
    @languages = Hash.new
    @languages['Todos los idiomas'] = '0'
    Language.all.each do |m|
      @languages[m.name] = m.id
    end
    @days = get_days.invert
    if params[:language].nil?
      @teachers = Teacher.all
    else      
      if params[:language] == '0'
        @teachers = Teacher.all
      else
        @teachers = Teacher.where(language_id: params[:language])
      end
    end
    
  end

  def activate_matriculation
  	if request.post?
  		if params[:activate] == 1 and params[:matriculation] != nil
  			m = Matriculation.find(params[:matriculation]).state = true
  			m.pre_matriculation.state = true
  			redirect_to index_path
  		end
  	else
  		redirect_to index_path
  	end
  end

  def new_teacher
    if params[:error] == '1'
      @is_error = true
    end

    if params[:error] == '0'
      @is_notification = true
    end
  	
    @message = params[:message]
  	@permissions = Permission.all
  	@sex = {'1' => 'Masculino', '0' => "Femenino"}
  	@marital_status = Hash.new
    MaritalStatus.all.each do |m|
      @marital_status[m.name] = m.id
    end

    @languages = Hash.new
    Language.all.each do |l|
      @languages[l.name] = l.id
    end
  end

  def create_teacher    
    rest = User.create_teacher(params)    
  	if rest
      redirect_to new_teacher_path, message: 'Docente agregado con éxito, ¿Desea agregar más?', error: '0'
    else
      redirect_to new_teacher_path, message: 'Error al registrar el usuario, el nombre ya existe', error: '1'
    end
  end


  def create_schedule
    
  end

private
	def get_parameter_teacher(params)
		@username = params[:username]
		@password = params[:password]
		@name = params[:name]
		@paternal_lastname = params[:paternal_lastname]
		@maternal_lastname = params[:maternal_lastname]
		@dni = params[:dni]
		@address = params[:address]
		@district = params[:district]
		@province = params[:province]
		@department = params[:department]
		@home_phone = params[:home_phone]
		@mobile_phone = params[:mobile_phone]
		@sex = params[:sex]
		@birthday = params[:birthday]
		@birthplace = params[:birthplace]
		@marital_status = params[:marital_status]
		@start_date = params[:start_date]
	end

end
