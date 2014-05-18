class Matriculation < ActiveRecord::Base
	belongs_to :pre_matriculations
	has_one :matricualtion_course
	has_one :matriculation_validate

	has_many :payments
end
