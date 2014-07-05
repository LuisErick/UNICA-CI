class User < ActiveRecord::Base

	#####################################################################
	##### 															#####
	##### 		EN DESARROLLO, TIENE ERRORES, NO PREOCUPARSE	    #####
	##### 															#####
	#####################################################################

	belongs_to :permission
	has_one :person

	#validaciones
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 6, too_short: "La contraseña debe tener 6 carácteres como mínimo" }

   	
	def self.register(username,password,language,course_type,level,package,validation_type,name,paternal_lastname,maternal_lastname,address,dni,district,province,department,home_phone,mobile_phone,sex,birthday,birthplace,unica_person,college,postgrade_person,marital_status,student_type,postgrade_type,semester)

		user = self.new(username: username, password: password)
		is_postgrade_person = validate_object(postgrade_person)
		is_unica_person = validate_object(unica_person)
		
		if user.save
			person = Person.new(user: user, paternal_lastname: paternal_lastname, maternal_lastname: maternal_lastname, name: name, dni: dni, address: address, district: district, province: province,  department: department, home_phone: home_phone, mobile_phone: mobile_phone, sex: sex, birthday: birthday, birthplace: birthplace, marital_status: marital_status)
			if person.save
				if is_postgrade_person
					postgrade_person = PostgradePerson.new(person: person, postgrade_type: postgrade_type)
				end
				if is_unica_person
					unica_person = UnicaPerson.new(person: person, college: college, semester: semester)
				end
				pre_matriculation = PreMatriculation.new(person: person, course_type: course_type, language: language, state: false)
				if pre_matriculation.save
					if course_type == '2'
						pre_matriculation_communicative = PreMatriculationCommunicative.new(pre_matriculation: pre_matriculation, level: level)
					end
					matriculations = Matriculation.new(pre_matriculation: pre_matriculation)
				else

				end				
			else

			end
		else

		end
	end

	def self.create_teacher(params)
		params[:user] = params[:user].dup.except(:confirm_password)
		params[:user][:permission] = Permission.find(3)
		params[:user][:state] = true
		user = self.new(user_params(params))
		if user.save
			params[:person][:user] = user
			params[:person][:marital_status] = MaritalStatus.find(params[:person][:marital_status])
			person = Person.new(person_params)
			if person.save
				params[:teacher][:person] = person
				teacher = Teacher.new(teacher_params)			
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

    def set_state
    	self.state = false
    end

    def self.validate_object(object)
    	if object.nil?
    		false
    	else
    		true
    	end
    end
private
    def self.user_params(params)
      params.require(:user).permit(:username, :password, :state, :permission)
    end

    def self.person_params(params)
      params.require(:user).permit(:user, :paternal_lastname, :maternal_lastname, :name, :dni, :address, :district, :province,  :department, :home_phone, :mobile_phone, :sex, :birthday, :birthplace, :marital_status) 
    end

    def self.teacher_params(params)
      params.require(:user).permit(:person,:start_date , :language_id)
    end
end
