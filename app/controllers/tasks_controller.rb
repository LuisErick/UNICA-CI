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
      render text: params[:m_error]
    else
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
  end

  def create_teacher    
    rest = User.create_teacher(params)    
  	if rest == true
      redirect_to new_teacher_path, message: 'Docente agregado con éxito, ¿Desea agregar más?', error: '0'
    else
      redirect_to new_teacher_path, message: 'Error al registrar el usuario, el nombre ya existe', error: '1', m_error: rest.errors
    end
  end


  def create_schedule
    rest = User.create_schedule(params)
  end


end
