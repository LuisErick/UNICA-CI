class User < ActiveRecord::Base
	belongs_to :permission
	has_one :person

	def register(username,password,language,course_type,level,package,validation_type,name,paternal_lastname,maternal_lastname,address,district,province,department,home_phone,mobile_phone,sex,birthday,birthplace,unica_person,college,postgrade_person,marital_status)
		
	end
end
