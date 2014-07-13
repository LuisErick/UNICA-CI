class GroupSchedule < ActiveRecord::Base
	belongs_to :schedule
	belongs_to :package
end
