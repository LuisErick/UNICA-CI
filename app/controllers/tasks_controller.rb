class TasksController < ApplicationController
  respond_to :html, :js
  def pending_matriculations
    @pendings = Matriculation.where(state: false)
  end

  def table_teachers_english
    
  end

  def table_teachers_french
    
  end

  def table_teachers_italian
    
  end

  def table_teachers_portuguese
    
  end
  def new_schedule
    @languages = to_hash(Language.all)
    @days = get_days.invert
    @numbers = {'1' => '1', '2' => '2', '3' => '3'}
    @teachers = Teacher.all
    @teachers_english = Teacher.where(language_id: '1')   
    @teachers_french = Teacher.where(language_id: '2') 
    @teachers_portuguese = Teacher.where(language_id: '3') 
    @teachers_italian = Teacher.where(language_id: '4') 
    
    
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
    rest = Schedule.create_package(params)
    if rest == false
      redirect_to new_schedule_path
    else
      redirect_to index_path
    end
  end


end
