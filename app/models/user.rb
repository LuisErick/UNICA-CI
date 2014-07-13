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

	def self.create_schedule(params)
		
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
      params.require(:user).permit(:username, :password, :state, :permission_id)
    end

    def self.person_params(params)
      params.require(:person).permit(:user_id, :paternal_lastname, :maternal_lastname, :name, :dni, :address, :district, :province,  :department, :home_phone, :mobile_phone, :sex, :birthday, :birthplace, :marital_status_id) 
    end

    def self.teacher_params(params)
      params.require(:teacher).permit(:person_id, :start_date , :language_id)
    end
end
