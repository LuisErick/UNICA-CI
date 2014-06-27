class TasksController < ApplicationController
  def pending_matriculations
  	@pendings = Matriculation.where(state: false)
  end

  def new_teacher
  	if params[:error] == '1'
  		get_parameter_teacher(params[:backup])
  	end
  	@permissions = Permission.all
  	@sex = {'1' => 'Masculino', '0' => "Femenino"}
  	@marital_status = MaritalStatus.all
  end

  

  def create_teacher
  	backup = User.create_teacher(params)
  	if backup.is_a?(Hash)
  		redirect_to new_teacher, backup: backup, error: '1'
  	else
  		redirect_to index_path
  	end
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
