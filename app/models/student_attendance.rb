class StudentAttendance < ActiveRecord::Base
	belongs_to :matriculation_courses
end
