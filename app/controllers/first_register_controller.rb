class FirstRegisterController < ApplicationController
	def new
		@languages = Language.all
		@course_types = CourseType.all
		@levels = Level.all
		@packages = Package.all
		@marital_statuses = MaritalStatus.all
		@colleges = to_hash(College.all)
		@postgrade_types = PostgradeType.all
		@sex = {'1' => 'Masculino', '0' => "Femenino"}
		@student_types = {'1' => 'Si, ya he cursado', '0' => 'No, es la primera vez'}
		@validation_type = {'1' => 'Por exámen', '0' => 'Por pago único'}
		@is_unica = {'1' => 'Si, soy un alumno de la UNICA', '2' => 'No, no pertenezco a la UNICA'}
		@is_postgrade = {'0' => 'No tengo un posgrado', '1' => 'Magister', '2' => 'Doctorado'}
	end

	

	def create
		render text: params
	end

	def suggest_schedule
		@days = get_days.invert
		@languages = to_hash(Language)
	end

	def insert_schedule
		#Insertar horario de suggest
		redirect_to index_path
	end
end