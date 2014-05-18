class College < ActiveRecord::Base
	belongs_to :faculty
	has_many :unica_people
end
