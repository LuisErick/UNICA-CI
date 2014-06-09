class FirstRegisterController < ApplicationController
	def new
		@languages = Language.all
		@course_types = CourseType.all
		@levels = Level.all
		@packages = Package.all
		@marital_statuses = MaritalStatus.all
		@sex = {'1' => 'Masculino', '0' => "Femenino"}
		@student_types = {'1' => 'Si, ya he cursado', '0' => 'No, es la primera vez'}
	end
	def create
		render text: params[:sex]
	end
end