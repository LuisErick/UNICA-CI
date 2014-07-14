class TasksController < ApplicationController
  respond_to :html, :js

  def pending_matriculations
    @pendings = Matriculation.where(state: false)
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
        m = Matriculation.find(params[:matriculation])
        if params[:code] = m.pre_matriculation.code 
          m.state = true   
          m.pre_matriculation.state = true 
          m.pre_matriculation.person.user.state = true   
          student = Student.new(person_id: m.pre_matriculation.person.id, acceptance_day: Time.now.to_date)
          redirect_to index_path
        end        
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

  def choose_teacher
    if params[:teacher]
      @teachers = Teacher.where(teacher_id: params[:teacher])
    else
      if params[:language]
        @teachers = Teacher.where(language_id: params[:language])  
      else
        @teachers = Teacher.all
      end
    end    
  end
  
  def sign_attendance
    @teacher = Teacher.find(params[:teacher])
    @packages = Package.where(teacher_id: @teacher.id, state: true)
    @days = Hash.new
    @packages.each do |p|
      p.group_schedules.each do |g|
        @days[g.schedule.day] = to_name_days(g.schedule.day)
      end
    end

    
    increments = {1 => @days}
    @dates = Hash.new 

    for i in 0..@days.length-1
        increments[i] = @days.keys[i] - @days.keys[i-1]
    end


    @dates = @packages.last.start_date
    number_of_days = @packages
  end

  def create_attendance_teacher

  end
end
