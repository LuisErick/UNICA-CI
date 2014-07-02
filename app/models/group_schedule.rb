class GroupSchedule < ActiveRecord::Base
	belongs_to :group_schedule
	belongs_to :package
end
