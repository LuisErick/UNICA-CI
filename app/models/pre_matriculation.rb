class PreMatriculation < ActiveRecord::Base
	belongs_to :person
	belongs_to :course_type
	belongs_to :language

	has_one :pre_matriculation_communicative
	has_one :matriculation
end
