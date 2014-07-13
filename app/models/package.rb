class Package < ActiveRecord::Base
	belongs_to :teacher
	has_many :group_schedules
	has_many :matriculation_courses
	has_many :teacher_attendance
end
