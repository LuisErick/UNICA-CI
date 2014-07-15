class User < ActiveRecord::Base

	belongs_to :permission
	has_one :person

	#validaciones
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 6, too_short: "La contraseña debe tener 6 carácteres como mínimo" }

   	
	def self.create_first_user(params)
		params[:user] = params[:user].dup.except(:confirm_password)
		params[:user][:permission_id] = 4
		params[:user][:state] = true
		user = self.new(user_params(params))
		if user.save
			params[:person][:user_id] = user.id
			params[:person][:marital_status_id] = params[:person][:marital_status]
			params[:person][:user_id] = user.id
			params[:person][:marital_status_id] = params[:person][:marital_status]
			person = Person.new(person_params(params))
			if person.save
				params[:pre_matriculation][:person_id] = person.id
				params[:pre_matriculation][:code] = gen_code
				params[:pre_matriculation][:state] = false
				pre_matriculation = PreMatriculation.new(pre_matriculation_params(params))
				if pre_matriculation.save
					params[:matriculation][:pre_matriculation_id] = pre_matriculation.id
					params[:matriculation][:acceptance_day] = nil
					params[:matriculation][:state] = false
					matriculation = Matriculation.new(matriculation_params(params))
					if matriculation.save
						if params[:validation_type] == nil
							params[:matriculation_course][:matriculation_id] = matriculation.id
							params[:matriculation_course][:package_id] = params[:matriculation_course][:package]
							params[:matriculation_course][[:start_date]] = Package.find(params[:matriculation_course][:package]).start_date
							params[:matriculation_course][:end_date] = nil
							params[:matriculation_course][:final_grade] = nil
							matriculation_course = MatriculationCourse.new(matriculation_course_params(params))
							if matriculation_course.save
								return true
							else
								return false
							end

						else
							
						end
					end
				end
			end
		end
	end

	def self.create_teacher(params)
		params[:user] = params[:user].dup.except(:confirm_password)
		params[:user][:permission_id] = 3
		params[:user][:state] = true
		user = self.new(user_params(params))
		if user.save
			params[:person][:user_id] = user.id
			params[:person][:marital_status_id] = params[:person][:marital_status]
			person = Person.new(person_params(params))
			if person.save
				params[:teacher][:person_id] = person.id
				params[:teacher][:language_id] = params[:teacher][:language]
				teacher = Teacher.new(teacher_params(params))			
				if teacher.save
					return true
				else					
					user.destroy
					person.destroy
					teacher.destroy
					return user
				end
			else				
				user.destroy
				person.destroy
				return user
			end
		else			
			user.destroy
			return user
		end
	end

private
	def self.matriculation_course_params(params)
		params.require(:user).permit(:matriculation_id, :package_id, :start_date, :end_date, :final_grade)
	end
	def self.matriculation_params(params)
		params.require(:user).permit(:pre_matriculation_id, :acceptance_day, :state)
	end
	def self.pre_matriculation_params(params)
		params.require(:user).permit(:person_id, :course_type_id, :language_id, :state, :code)
	end
    def self.user_params(params)
      params.require(:user).permit(:username, :password, :state, :permission_id)
    end

    def self.person_params(params)
      params.require(:person).permit(:user_id, :paternal_lastname, :maternal_lastname, :name, :dni, :address, :district, :province,  :department, :home_phone, :mobile_phone, :sex, :birthday, :birthplace, :marital_status_id) 
    end

    def self.teacher_params(params)
      params.require(:teacher).permit(:person_id, :start_date , :language_id)
    end

    def self.gen_code
    	chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ23456789'
  		Array.new(6) { chars[rand(chars.length)].chr }.join.upcase
    end
end
