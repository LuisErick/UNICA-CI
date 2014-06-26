class User < ActiveRecord::Base

	#####################################################################
	##### 															#####
	##### 		EN DESARROLLO, TIENE ERRORES, NO PREOCUPARSE	    #####
	##### 															#####
	#####################################################################

	belongs_to :permission
	has_one :person

	#validaciones
	validates :username, presence: true
	validates :password, presence: true, length: { minimum: 6, too_short: "La contraseña debe tener 6 carácteres como mínimo" }

    after_validation :set_state, on: :create

    #pre_matriculations => Añadir codigo
    #matriculations => Añadir state
    #pre_mariculation_communicative => {corregir nombre, corregir course_type }
    #packages => Añadir state
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
					if student_type == '0'
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
end
