class Package < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :schedule
	belongs_to :room

	has_many :matriculation_courses
	has_many :teacher_attendances
end
