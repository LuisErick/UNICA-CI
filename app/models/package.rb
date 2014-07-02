class Package < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :room

	has_many :group_schedules
	has_many :teacher_attendances
	has_many :matriculation_courses
end
