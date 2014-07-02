class Matriculations < ActiveRecord::Base
	has_one :matriculations_validate
	has_one :matriculations_course
end
