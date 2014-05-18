class Grade < ActiveRecord::Base
	belongs_to :matriculation_course
	belongs_to :grade_type
end
