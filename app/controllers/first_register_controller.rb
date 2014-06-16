class FirstRegisterController < ApplicationController
	def new
		@languages = Language.all
		@course_types = CourseType.all
		@levels = Level.all
		#Esto no debería ser all, debería cambiar con ajax
		@packages = Package.all
		@marital_statuses = MaritalStatus.all
		@colleges = College.all
		@sex = {'1' => 'Masculino', '0' => "Femenino"}
		@student_types = {'1' => 'Si, ya he cursado', '0' => 'No, es la primera vez'}
		@is_unica = {'1' => 'Si, soy un alumno de la UNICA', '0' => 'No, no pertenezco a la UNICA'}
		@is_postgrade = {'0' => 'No tengo un posgrado', '1' => 'Magister', '2' => 'Doctorado'}
	end
	def create
		render text: params[:birthday]
	end
end