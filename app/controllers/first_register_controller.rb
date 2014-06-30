class FirstRegisterController < ApplicationController
	def new
		@languages = Language.all
		@course_types = CourseType.all
		@levels = Level.all
		#Esto no debería ser all, debería cambiar con ajax
		@packages = Package.all
		@marital_statuses = MaritalStatus.all
		@colleges = College.all
		@postgrade_types = PostgradeType.all
		@sex = {'1' => 'Masculino', '0' => "Femenino"}
		@student_types = {'1' => 'Si, ya he cursado', '0' => 'No, es la primera vez'}
		@validation_type = {'1' => 'Por exámen', '0' => 'Por pago único'}
		@is_unica = {'1' => 'Si, soy un alumno de la UNICA', '0' => 'No, no pertenezco a la UNICA'}
		@is_postgrade = {'0' => 'No tengo un posgrado', '1' => 'Magister', '2' => 'Doctorado'}
	end
	def create
=begin
		username = params[:username]
		password = params[:password]
		language = params[:language]
		course_type = params[:course_type]
		level = params[:level]
		package = params[:package]
		validation_type = params[:validation_type]
		name = params[:name]
		paternal_lastname = params[:paternal_lastname]
		maternal_lastname = params[:maternal_lastname]
		dni = params[:dni]
		address = params[:address]
		district = params[:district]
		province = params[:province]
		department = params[:department]
		home_phone = params[:home_phone]
		mobile_phone = params[:mobile_phone]
		sex = params[:sex]
		birthday = params[:birthday]
		birthplace = params[:birthplace]
		unica_person = params[:unica_person]
		college = params[:college]
		postgrade_person = params[:postgrade_person]
		marital_status = params[:marital_status]
		student_type = params[:student_type]
		postgrade_type = params[:postgrade_type]
		semester = params[:semester]
=end
		#Enviando todos los parámetros
		#User.create_pre_matriculation(params)
		#User.register(username,password,language,course_type,level,package,validation_type,name,paternal_lastname,maternal_lastname,address,dni,district,province,department,home_phone,mobile_phone,sex,birthday,birthplace,unica_person,college,postgrade_person,marital_status,student_type,postgrade_type,semester)

		#render text: params
	end
end