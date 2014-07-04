class MatriculationCourse < ActiveRecord::Base
	belongs_to :matriculation
	belongs_to :package
	has_many :grades
	has_many :student_attendances
end
