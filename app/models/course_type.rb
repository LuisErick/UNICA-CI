class CourseType < ActiveRecord::Base
	has_many :pre_matriculations
end
